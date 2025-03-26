// models/data/application/application.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/constants/constants.dart';

part 'application.freezed.dart';
part 'application.g.dart';

/// Define meta information about the application itself

@freezed
sealed class ApplicationModel with _$ApplicationModel {
  /// Creates a new `Application` instance
  @JsonSerializable(explicitToJson: true)
  const factory ApplicationModel({
    @JsonKey(name: ApplicationModelKeys.displayName) String? name,
    @JsonKey(name: ApplicationModelKeys.packageName) String? package,
    @JsonKey(name: ApplicationModelKeys.author) String? author,
    @JsonKey(name: ApplicationModelKeys.appVersion) String? version,
    @JsonKey(name: ApplicationModelKeys.installationId) String? installationID,
  }) = _ApplicationModel;

  /// Private constructor for ``[ApplicationModel]`` model
  /// Facilitates creation of custom methods for custom functionality
  const ApplicationModel._();

  /// Factory constructor converting json to ``[ApplicationModel]`` object
  factory ApplicationModel.fromJson(Map<String, Object?> json) =>
      _$ApplicationModelFromJson(json);
}
