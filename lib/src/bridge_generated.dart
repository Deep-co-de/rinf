// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.79.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'frb_engine/exports.dart';
import 'package:uuid/uuid.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'frb_engine/exports.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

class BridgeImpl implements Bridge {
  final BridgePlatform _platform;
  factory BridgeImpl(ExternalLibrary dylib) =>
      BridgeImpl.raw(BridgePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory BridgeImpl.wasm(FutureOr<WasmModule> module) =>
      BridgeImpl(module as ExternalLibrary);
  BridgeImpl.raw(this._platform);
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

  void prepareChannels({dynamic hint}) {
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_prepare_channels(),
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

  void requestToRust({required RustRequestUnique requestUnique, dynamic hint}) {
    var arg0 =
        _platform.api2wire_box_autoadd_rust_request_unique(requestUnique);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_request_to_rust(arg0),
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

class BridgePlatform extends FlutterRustBridgeBase<BridgeWire> {
  BridgePlatform(ffi.DynamicLibrary dylib) : super(BridgeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_RustRequestUnique> api2wire_box_autoadd_rust_request_unique(
      RustRequestUnique raw) {
    final ptr = inner.new_box_autoadd_rust_request_unique_0();
    _api_fill_to_wire_rust_request_unique(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_rust_request_unique(
      RustRequestUnique apiObj, ffi.Pointer<wire_RustRequestUnique> wireObj) {
    _api_fill_to_wire_rust_request_unique(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_rust_request(
      RustRequest apiObj, wire_RustRequest wireObj) {
    wireObj.address = api2wire_String(apiObj.address);
    wireObj.operation = api2wire_rust_operation(apiObj.operation);
    wireObj.bytes = api2wire_uint_8_list(apiObj.bytes);
  }

  void _api_fill_to_wire_rust_request_unique(
      RustRequestUnique apiObj, wire_RustRequestUnique wireObj) {
    wireObj.id = api2wire_i32(apiObj.id);
    _api_fill_to_wire_rust_request(apiObj.request, wireObj.request);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class BridgeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  BridgeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  BridgeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_prepare_rust_signal_stream(
    int port_,
  ) {
    return _wire_prepare_rust_signal_stream(
      port_,
    );
  }

  late final _wire_prepare_rust_signal_streamPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_prepare_rust_signal_stream');
  late final _wire_prepare_rust_signal_stream =
      _wire_prepare_rust_signal_streamPtr.asFunction<void Function(int)>();

  void wire_prepare_rust_response_stream(
    int port_,
  ) {
    return _wire_prepare_rust_response_stream(
      port_,
    );
  }

  late final _wire_prepare_rust_response_streamPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_prepare_rust_response_stream');
  late final _wire_prepare_rust_response_stream =
      _wire_prepare_rust_response_streamPtr.asFunction<void Function(int)>();

  WireSyncReturn wire_prepare_channels() {
    return _wire_prepare_channels();
  }

  late final _wire_prepare_channelsPtr =
      _lookup<ffi.NativeFunction<WireSyncReturn Function()>>(
          'wire_prepare_channels');
  late final _wire_prepare_channels =
      _wire_prepare_channelsPtr.asFunction<WireSyncReturn Function()>();

  void wire_check_rust_streams(
    int port_,
  ) {
    return _wire_check_rust_streams(
      port_,
    );
  }

  late final _wire_check_rust_streamsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_check_rust_streams');
  late final _wire_check_rust_streams =
      _wire_check_rust_streamsPtr.asFunction<void Function(int)>();

  void wire_start_rust_logic(
    int port_,
  ) {
    return _wire_start_rust_logic(
      port_,
    );
  }

  late final _wire_start_rust_logicPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_start_rust_logic');
  late final _wire_start_rust_logic =
      _wire_start_rust_logicPtr.asFunction<void Function(int)>();

  WireSyncReturn wire_request_to_rust(
    ffi.Pointer<wire_RustRequestUnique> request_unique,
  ) {
    return _wire_request_to_rust(
      request_unique,
    );
  }

  late final _wire_request_to_rustPtr = _lookup<
      ffi.NativeFunction<
          WireSyncReturn Function(
              ffi.Pointer<wire_RustRequestUnique>)>>('wire_request_to_rust');
  late final _wire_request_to_rust = _wire_request_to_rustPtr.asFunction<
      WireSyncReturn Function(ffi.Pointer<wire_RustRequestUnique>)>();

  ffi.Pointer<wire_RustRequestUnique> new_box_autoadd_rust_request_unique_0() {
    return _new_box_autoadd_rust_request_unique_0();
  }

  late final _new_box_autoadd_rust_request_unique_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_RustRequestUnique> Function()>>(
      'new_box_autoadd_rust_request_unique_0');
  late final _new_box_autoadd_rust_request_unique_0 =
      _new_box_autoadd_rust_request_unique_0Ptr
          .asFunction<ffi.Pointer<wire_RustRequestUnique> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_RustRequest extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> address;

  @ffi.Int32()
  external int operation;

  external ffi.Pointer<wire_uint_8_list> bytes;
}

final class wire_RustRequestUnique extends ffi.Struct {
  @ffi.Int32()
  external int id;

  external wire_RustRequest request;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
