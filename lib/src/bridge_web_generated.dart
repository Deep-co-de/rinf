// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.79.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_web_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'frb_engine/exports.dart';
import 'package:uuid/uuid.dart';
import 'bridge_web_generated.io.dart'
    if (dart.library.html) 'bridge_web_generated.web.dart';

class BridgeWebImpl implements BridgeWeb {
  final BridgeWebPlatform _platform;
  factory BridgeWebImpl(ExternalLibrary dylib) =>
      BridgeWebImpl.raw(BridgeWebPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory BridgeWebImpl.wasm(FutureOr<WasmModule> module) =>
      BridgeWebImpl(module as ExternalLibrary);
  BridgeWebImpl.raw(this._platform);
  Stream<RustSignal> prepareRustSignalStream({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_prepare_rust_signal_stream(port_),
      parseSuccessData: _wire2api_rust_signal,
      constMeta: kPrepareRustSignalStreamConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPrepareRustSignalStreamConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "prepare_rust_signal_stream",
        argNames: [],
      );

  Stream<RustResponseUnique> prepareRustResponseStream({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_prepare_rust_response_stream(port_),
      parseSuccessData: _wire2api_rust_response_unique,
      constMeta: kPrepareRustResponseStreamConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPrepareRustResponseStreamConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "prepare_rust_response_stream",
        argNames: [],
      );

  Future<void> prepareChannels({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_prepare_channels(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kPrepareChannelsConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPrepareChannelsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "prepare_channels",
        argNames: [],
      );

  Future<bool> checkRustStreams({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_check_rust_streams(port_),
      parseSuccessData: _wire2api_bool,
      constMeta: kCheckRustStreamsConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCheckRustStreamsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "check_rust_streams",
        argNames: [],
      );

  Future<void> startRustLogic({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_start_rust_logic(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kStartRustLogicConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kStartRustLogicConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "start_rust_logic",
        argNames: [],
      );

  Future<void> requestToRust(
      {required RustRequestUnique requestUnique, dynamic hint}) {
    var arg0 =
        _platform.api2wire_box_autoadd_rust_request_unique(requestUnique);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_request_to_rust(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kRequestToRustConstMeta,
      argValues: [requestUnique],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRequestToRustConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "request_to_rust",
        argNames: ["requestUnique"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  RustResponse _wire2api_rust_response(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return RustResponse(
      successful: _wire2api_bool(arr[0]),
      bytes: _wire2api_uint_8_list(arr[1]),
    );
  }

  RustResponseUnique _wire2api_rust_response_unique(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return RustResponseUnique(
      id: _wire2api_i32(arr[0]),
      response: _wire2api_rust_response(arr[1]),
    );
  }

  RustSignal _wire2api_rust_signal(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return RustSignal(
      address: _wire2api_String(arr[0]),
      bytes: _wire2api_uint_8_list(arr[1]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_rust_operation(RustOperation raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
