//
//  Generated code. Do not modify.
//  source: Packet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Packet.pbenum.dart';

export 'Packet.pbenum.dart';

class Packet extends $pb.GeneratedMessage {
  factory Packet({
    Packet_PacketType? packetType,
    $core.String? data,
    $core.String? cmdtype,
  }) {
    final $result = create();
    if (packetType != null) {
      $result.packetType = packetType;
    }
    if (data != null) {
      $result.data = data;
    }
    if (cmdtype != null) {
      $result.cmdtype = cmdtype;
    }
    return $result;
  }
  Packet._() : super();
  factory Packet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Packet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Packet', createEmptyInstance: create)
    ..e<Packet_PacketType>(1, _omitFieldNames ? '' : 'packetType', $pb.PbFieldType.QE, protoName: 'packetType', defaultOrMaker: Packet_PacketType.HEARTBEAT, valueOf: Packet_PacketType.valueOf, enumValues: Packet_PacketType.values)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aOS(3, _omitFieldNames ? '' : 'cmdtype')
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Packet clone() => Packet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Packet copyWith(void Function(Packet) updates) => super.copyWith((message) => updates(message as Packet)) as Packet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Packet create() => Packet._();
  Packet createEmptyInstance() => create();
  static $pb.PbList<Packet> createRepeated() => $pb.PbList<Packet>();
  @$core.pragma('dart2js:noInline')
  static Packet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Packet>(create);
  static Packet? _defaultInstance;

  /// 包类型
  @$pb.TagNumber(1)
  Packet_PacketType get packetType => $_getN(0);
  @$pb.TagNumber(1)
  set packetType(Packet_PacketType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPacketType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPacketType() => clearField(1);

  /// 数据部分（可选，心跳包不包含数据部分）
  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);

  /// 命令枚举类型
  @$pb.TagNumber(3)
  $core.String get cmdtype => $_getSZ(2);
  @$pb.TagNumber(3)
  set cmdtype($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCmdtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearCmdtype() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
