// models/users/users.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/constants/constants.dart';

part 'users.freezed.dart';
part 'users.g.dart';

/// This is the blueprint for users

@freezed
class UserModel with _$UserModel {
  /// Creates a new `User` instance
  const factory UserModel({
    @JsonKey(name: UserModelKeys.id) int? id,
    @JsonKey(name: UserModelKeys.userName) String? username,
    @JsonKey(name: UserModelKeys.emailAddress) String? email,
    @JsonKey(name: UserModelKeys.firstName) String? firstName,
    @JsonKey(name: UserModelKeys.lastName) String? lastName,
    @JsonKey(name: UserModelKeys.gender) String? gender,
    @JsonKey(name: UserModelKeys.profileImage) String? image,
    @JsonKey(name: UserModelKeys.authToken) String? token,
  }) = _UserModel;

  /// Private constructor for ``[UserModel]`` model
  /// Facilitates creation of custom methods for custom functionality
  const UserModel._();

  /// Factory constructor converting json to ``[UserModel]`` object
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  String toString() => 'User $id';
}
