//
//  Generated code. Do not modify.
//  source: Packet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use packetDescriptor instead')
const Packet$json = {
  '1': 'Packet',
  '2': [
    {'1': 'packetType', '3': 1, '4': 2, '5': 14, '6': '.Packet.PacketType', '10': 'packetType'},
    {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
    {'1': 'cmdtype', '3': 3, '4': 1, '5': 9, '10': 'cmdtype'},
  ],
  '4': [Packet_PacketType$json],
};

@$core.Deprecated('Use packetDescriptor instead')
const Packet_PacketType$json = {
  '1': 'PacketType',
  '2': [
    {'1': 'HEARTBEAT', '2': 1},
    {'1': 'DATA', '2': 2},
  ],
};

/// Descriptor for `Packet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packetDescriptor = $convert.base64Decode(
    'CgZQYWNrZXQSMgoKcGFja2V0VHlwZRgBIAIoDjISLlBhY2tldC5QYWNrZXRUeXBlUgpwYWNrZX'
    'RUeXBlEhIKBGRhdGEYAiABKAlSBGRhdGESGAoHY21kdHlwZRgDIAEoCVIHY21kdHlwZSIlCgpQ'
    'YWNrZXRUeXBlEg0KCUhFQVJUQkVBVBABEggKBERBVEEQAg==');

