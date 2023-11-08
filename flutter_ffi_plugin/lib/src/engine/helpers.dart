import 'dart:async';

import 'basic.dart';
import 'platform_independent.dart';
export 'ffi.dart';

/// borrowed from flutter foundation [kIsWeb](https://api.flutter.dev/flutter/foundation/kIsWeb-constant.html),
/// but allows for using it in a Dart context alike
const bool kIsWeb = identical(0, 0.0);

const uuidSizeInBytes = 16;

/// Allow custom setup hooks before ffi can be executed.
/// All other ffi calls will wait (async) until the setup ffi finishes.
///
/// Usage:
///
/// 1. Please call [setupMixinConstructor] inside the constructor of your class.
/// 2. Inside your [setup], please call ffi functions with hint=[kHintSetup].
mixin FlutterRustBridgeSetupMixin<T extends FlutterRustBridgeWireBase>
    on FlutterRustBridgeBase<T> {
  /// Inside your [setup], please call ffi functions with hint=[kHintSetup].
  static const kHintSetup = _FlutterRustBridgeSetupMixinSkipWaitHint._();

  final _setupCompleter = Completer<void>();

  /// Please call it inside the constructor of your class.
  void setupMixinConstructor() {
    () async {
      try {
        log('FlutterRustBridgeSetupMixin.setupMixinConstructor start setup');
        await setup();
      } finally {
        log('FlutterRustBridgeSetupMixin.setupMixinConstructor complete setup');
        _setupCompleter.complete();
      }
    }();
  }

  @override
  Future<S> executeNormal<S>(FlutterRustBridgeTask<S> task) async {
    await _beforeExecute(task);
    return await super.executeNormal(task);
  }

  @override
  Stream<S> executeStream<S>(FlutterRustBridgeTask<S> task) async* {
    await _beforeExecute(task);
    yield* super.executeStream(task);
  }

  Future<void> _beforeExecute<S>(FlutterRustBridgeTask<S> task) async {
    if (!_setupCompleter.isCompleted &&
        task.hint is! _FlutterRustBridgeSetupMixinSkipWaitHint) {
      log('FlutterRustBridgeSetupMixin.beforeExecute start waiting setup to complete (task=${task.debugName})');
      await _setupCompleter.future;
      log('FlutterRustBridgeSetupMixin.beforeExecute end waiting setup to complete (task=${task.debugName})');
    }
  }

  /// Do your setup logic inside this function.

  Future<void> setup();

  /// Configure a logger for error handling.

  void log(String message) {}
}

class _FlutterRustBridgeSetupMixinSkipWaitHint {
  const _FlutterRustBridgeSetupMixinSkipWaitHint._();
}

/// Add a timeout to [executeNormal]
mixin FlutterRustBridgeTimeoutMixin<T extends FlutterRustBridgeWireBase>
    on FlutterRustBridgeBase<T> {
  @override
  Future<S> executeNormal<S>(FlutterRustBridgeTask<S> task) {
    // capture a stack trace at *here*, such that when timeout, can have a good stack trace
    final stackTrace = StackTrace.current;

    final timeLimitForExecuteNormal = this.timeLimitForExecuteNormal;

    var future = super.executeNormal(task);
    if (timeLimitForExecuteNormal != null) {
      future = future.timeout(timeLimitForExecuteNormal,
          onTimeout: () => throw FlutterRustBridgeTimeoutException(
              timeLimitForExecuteNormal, task.debugName, stackTrace));
    }

    return future;
  }

  /// The time limit for methods using [executeNormal]. Return null means *disable* this functionality.

  Duration? get timeLimitForExecuteNormal;
}

/// Thrown when the browser is not run in a [cross-origin isolated] environment.
///
/// [cross-origin isolated]: https://developer.mozilla.org/en-US/docs/Web/API/crossOriginIsolated
class MissingHeaderException implements Exception {
  const MissingHeaderException();
  static const _message = '''
Buffers cannot be shared due to missing cross-origin headers.
Make sure your web server responds with the following headers:
- cross-origin-opener-policy: same-origin
- cross-origin-embedder-policy: require-corp''';

  @override
  String toString() => _message;
}

class PlatformMismatchException implements Exception {
  const PlatformMismatchException();
  static const _wasm = 'Not implemented on non-WASM platforms';

  @override
  String toString() => _wasm;
}

class UnmodifiableTypedListException implements Exception {
  const UnmodifiableTypedListException();

  static const _message = 'Cannot modify the length of typed lists.';

  @override
  String toString() => _message;
}

DateTime wire2apiTimestamp({required int ts, required bool isUtc}) {
  if (kIsWeb) {
    return DateTime.fromMillisecondsSinceEpoch(ts, isUtc: isUtc);
  }
  return DateTime.fromMicrosecondsSinceEpoch(ts, isUtc: isUtc);
}

Duration wire2apiDuration(int ts) {
  if (kIsWeb) {
    return Duration(milliseconds: ts);
  }
  return Duration(microseconds: ts);
}