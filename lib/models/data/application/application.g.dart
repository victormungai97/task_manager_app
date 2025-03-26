// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationModelImpl _$$ApplicationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplicationModelImpl(
      name: json['display_name'] as String?,
      package: json['package_name'] as String?,
      author: json['author'] as String?,
      version: json['app_version'] as String?,
      installationID: json['app_install_id'] as String?,
    );

Map<String, dynamic> _$$ApplicationModelImplToJson(
        _$ApplicationModelImpl instance) =>
    <String, dynamic>{
      'display_name': instance.name,
      'package_name': instance.package,
      'author': instance.author,
      'app_version': instance.version,
      'app_install_id': instance.installationID,
    };
