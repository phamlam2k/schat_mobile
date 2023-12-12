// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseModelData _$LoginResponseModelDataFromJson(
    Map<String, dynamic> json) {
  return _LoginResponseModelData.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModelData {
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelDataCopyWith<LoginResponseModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelDataCopyWith<$Res> {
  factory $LoginResponseModelDataCopyWith(LoginResponseModelData value,
          $Res Function(LoginResponseModelData) then) =
      _$LoginResponseModelDataCopyWithImpl<$Res, LoginResponseModelData>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class _$LoginResponseModelDataCopyWithImpl<$Res,
        $Val extends LoginResponseModelData>
    implements $LoginResponseModelDataCopyWith<$Res> {
  _$LoginResponseModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResponseModelDataImplCopyWith<$Res>
    implements $LoginResponseModelDataCopyWith<$Res> {
  factory _$$LoginResponseModelDataImplCopyWith(
          _$LoginResponseModelDataImpl value,
          $Res Function(_$LoginResponseModelDataImpl) then) =
      __$$LoginResponseModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$LoginResponseModelDataImplCopyWithImpl<$Res>
    extends _$LoginResponseModelDataCopyWithImpl<$Res,
        _$LoginResponseModelDataImpl>
    implements _$$LoginResponseModelDataImplCopyWith<$Res> {
  __$$LoginResponseModelDataImplCopyWithImpl(
      _$LoginResponseModelDataImpl _value,
      $Res Function(_$LoginResponseModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$LoginResponseModelDataImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LoginResponseModelDataImpl implements _LoginResponseModelData {
  const _$LoginResponseModelDataImpl({required this.accessToken});

  factory _$LoginResponseModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelDataImplFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'LoginResponseModelData(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelDataImplCopyWith<_$LoginResponseModelDataImpl>
      get copyWith => __$$LoginResponseModelDataImplCopyWithImpl<
          _$LoginResponseModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelDataImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModelData implements LoginResponseModelData {
  const factory _LoginResponseModelData({required final String accessToken}) =
      _$LoginResponseModelDataImpl;

  factory _LoginResponseModelData.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelDataImpl.fromJson;

  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseModelDataImplCopyWith<_$LoginResponseModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
