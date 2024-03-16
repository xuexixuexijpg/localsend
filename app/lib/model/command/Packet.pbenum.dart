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

/// 包的类型
class Packet_PacketType extends $pb.ProtobufEnum {
  static const Packet_PacketType HEARTBEAT = Packet_PacketType._(1, _omitEnumNames ? '' : 'HEARTBEAT');
  static const Packet_PacketType DATA = Packet_PacketType._(2, _omitEnumNames ? '' : 'DATA');

  static const $core.List<Packet_PacketType> values = <Packet_PacketType> [
    HEARTBEAT,
    DATA,
  ];

  static final $core.Map<$core.int, Packet_PacketType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Packet_PacketType? valueOf($core.int value) => _byValue[value];

  const Packet_PacketType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
