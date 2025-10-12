// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format_time_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FormatTimeParams _$FormatTimeParamsFromJson(Map<String, dynamic> json) =>
    _FormatTimeParams(
      formatType: $enumDecode(_$TimeFormatTypeEnumMap, json['formatType']),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      minutes: (json['minutes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FormatTimeParamsToJson(_FormatTimeParams instance) =>
    <String, dynamic>{
      'formatType': _$TimeFormatTypeEnumMap[instance.formatType]!,
      'dateTime': instance.dateTime?.toIso8601String(),
      'minutes': instance.minutes,
    };

const _$TimeFormatTypeEnumMap = {
  TimeFormatType.time: 'time',
  TimeFormatType.duration: 'duration',
  TimeFormatType.date: 'date',
};
