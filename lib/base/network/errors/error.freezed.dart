// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorCopyWith<$Res> {
  factory $BaseErrorCopyWith(BaseError value, $Res Function(BaseError) then) =
      _$BaseErrorCopyWithImpl<$Res, BaseError>;
}

/// @nodoc
class _$BaseErrorCopyWithImpl<$Res, $Val extends BaseError>
    implements $BaseErrorCopyWith<$Res> {
  _$BaseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HttpInternalServerErrorImplCopyWith<$Res> {
  factory _$$HttpInternalServerErrorImplCopyWith(
          _$HttpInternalServerErrorImpl value,
          $Res Function(_$HttpInternalServerErrorImpl) then) =
      __$$HttpInternalServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorBody});
}

/// @nodoc
class __$$HttpInternalServerErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$HttpInternalServerErrorImpl>
    implements _$$HttpInternalServerErrorImplCopyWith<$Res> {
  __$$HttpInternalServerErrorImplCopyWithImpl(
      _$HttpInternalServerErrorImpl _value,
      $Res Function(_$HttpInternalServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorBody = null,
  }) {
    return _then(_$HttpInternalServerErrorImpl(
      null == errorBody
          ? _value.errorBody
          : errorBody // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpInternalServerErrorImpl implements HttpInternalServerError {
  const _$HttpInternalServerErrorImpl(this.errorBody);

  @override
  final String errorBody;

  @override
  String toString() {
    return 'BaseError.httpInternalServerError(errorBody: $errorBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpInternalServerErrorImpl &&
            (identical(other.errorBody, errorBody) ||
                other.errorBody == errorBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpInternalServerErrorImplCopyWith<_$HttpInternalServerErrorImpl>
      get copyWith => __$$HttpInternalServerErrorImplCopyWithImpl<
          _$HttpInternalServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return httpInternalServerError(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return httpInternalServerError?.call(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(errorBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return httpInternalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return httpInternalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(this);
    }
    return orElse();
  }
}

abstract class HttpInternalServerError implements BaseError {
  const factory HttpInternalServerError(final String errorBody) =
      _$HttpInternalServerErrorImpl;

  String get errorBody;
  @JsonKey(ignore: true)
  _$$HttpInternalServerErrorImplCopyWith<_$HttpInternalServerErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpUnAuthorizedErrorImplCopyWith<$Res> {
  factory _$$HttpUnAuthorizedErrorImplCopyWith(
          _$HttpUnAuthorizedErrorImpl value,
          $Res Function(_$HttpUnAuthorizedErrorImpl) then) =
      __$$HttpUnAuthorizedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpUnAuthorizedErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$HttpUnAuthorizedErrorImpl>
    implements _$$HttpUnAuthorizedErrorImplCopyWith<$Res> {
  __$$HttpUnAuthorizedErrorImplCopyWithImpl(_$HttpUnAuthorizedErrorImpl _value,
      $Res Function(_$HttpUnAuthorizedErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpUnAuthorizedErrorImpl implements HttpUnAuthorizedError {
  const _$HttpUnAuthorizedErrorImpl();

  @override
  String toString() {
    return 'BaseError.httpUnAuthorizedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpUnAuthorizedErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return httpUnAuthorizedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return httpUnAuthorizedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (httpUnAuthorizedError != null) {
      return httpUnAuthorizedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return httpUnAuthorizedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return httpUnAuthorizedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (httpUnAuthorizedError != null) {
      return httpUnAuthorizedError(this);
    }
    return orElse();
  }
}

abstract class HttpUnAuthorizedError implements BaseError {
  const factory HttpUnAuthorizedError() = _$HttpUnAuthorizedErrorImpl;
}

/// @nodoc
abstract class _$$HttpUnknownErrorImplCopyWith<$Res> {
  factory _$$HttpUnknownErrorImplCopyWith(_$HttpUnknownErrorImpl value,
          $Res Function(_$HttpUnknownErrorImpl) then) =
      __$$HttpUnknownErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HttpUnknownErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$HttpUnknownErrorImpl>
    implements _$$HttpUnknownErrorImplCopyWith<$Res> {
  __$$HttpUnknownErrorImplCopyWithImpl(_$HttpUnknownErrorImpl _value,
      $Res Function(_$HttpUnknownErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HttpUnknownErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpUnknownErrorImpl implements HttpUnknownError {
  const _$HttpUnknownErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BaseError.httpUnknownError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpUnknownErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpUnknownErrorImplCopyWith<_$HttpUnknownErrorImpl> get copyWith =>
      __$$HttpUnknownErrorImplCopyWithImpl<_$HttpUnknownErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return httpUnknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return httpUnknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return httpUnknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return httpUnknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(this);
    }
    return orElse();
  }
}

abstract class HttpUnknownError implements BaseError {
  const factory HttpUnknownError(final String message) = _$HttpUnknownErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HttpUnknownErrorImplCopyWith<_$HttpUnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutErrorImplCopyWith<$Res> {
  factory _$$LogOutErrorImplCopyWith(
          _$LogOutErrorImpl value, $Res Function(_$LogOutErrorImpl) then) =
      __$$LogOutErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$LogOutErrorImpl>
    implements _$$LogOutErrorImplCopyWith<$Res> {
  __$$LogOutErrorImplCopyWithImpl(
      _$LogOutErrorImpl _value, $Res Function(_$LogOutErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutErrorImpl implements LogOutError {
  const _$LogOutErrorImpl();

  @override
  String toString() {
    return 'BaseError.logOutError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return logOutError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return logOutError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (logOutError != null) {
      return logOutError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return logOutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return logOutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (logOutError != null) {
      return logOutError(this);
    }
    return orElse();
  }
}

abstract class LogOutError implements BaseError {
  const factory LogOutError() = _$LogOutErrorImpl;
}

/// @nodoc
abstract class _$$DeviceTakenErrorImplCopyWith<$Res> {
  factory _$$DeviceTakenErrorImplCopyWith(_$DeviceTakenErrorImpl value,
          $Res Function(_$DeviceTakenErrorImpl) then) =
      __$$DeviceTakenErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeviceTakenErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$DeviceTakenErrorImpl>
    implements _$$DeviceTakenErrorImplCopyWith<$Res> {
  __$$DeviceTakenErrorImplCopyWithImpl(_$DeviceTakenErrorImpl _value,
      $Res Function(_$DeviceTakenErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeviceTakenErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeviceTakenErrorImpl implements DeviceTakenError {
  const _$DeviceTakenErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BaseError.deviceTakenError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceTakenErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceTakenErrorImplCopyWith<_$DeviceTakenErrorImpl> get copyWith =>
      __$$DeviceTakenErrorImplCopyWithImpl<_$DeviceTakenErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return deviceTakenError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return deviceTakenError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (deviceTakenError != null) {
      return deviceTakenError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return deviceTakenError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return deviceTakenError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (deviceTakenError != null) {
      return deviceTakenError(this);
    }
    return orElse();
  }
}

abstract class DeviceTakenError implements BaseError {
  const factory DeviceTakenError(final String message) = _$DeviceTakenErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DeviceTakenErrorImplCopyWith<_$DeviceTakenErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivationCodeErrorImplCopyWith<$Res> {
  factory _$$ActivationCodeErrorImplCopyWith(_$ActivationCodeErrorImpl value,
          $Res Function(_$ActivationCodeErrorImpl) then) =
      __$$ActivationCodeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActivationCodeErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$ActivationCodeErrorImpl>
    implements _$$ActivationCodeErrorImplCopyWith<$Res> {
  __$$ActivationCodeErrorImplCopyWithImpl(_$ActivationCodeErrorImpl _value,
      $Res Function(_$ActivationCodeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActivationCodeErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivationCodeErrorImpl implements ActivationCodeError {
  const _$ActivationCodeErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BaseError.activationCodeError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationCodeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationCodeErrorImplCopyWith<_$ActivationCodeErrorImpl> get copyWith =>
      __$$ActivationCodeErrorImplCopyWithImpl<_$ActivationCodeErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return activationCodeError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return activationCodeError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (activationCodeError != null) {
      return activationCodeError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return activationCodeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return activationCodeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (activationCodeError != null) {
      return activationCodeError(this);
    }
    return orElse();
  }
}

abstract class ActivationCodeError implements BaseError {
  const factory ActivationCodeError(final String message) =
      _$ActivationCodeErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ActivationCodeErrorImplCopyWith<_$ActivationCodeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvitationEmailErrorImplCopyWith<$Res> {
  factory _$$InvitationEmailErrorImplCopyWith(_$InvitationEmailErrorImpl value,
          $Res Function(_$InvitationEmailErrorImpl) then) =
      __$$InvitationEmailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvitationEmailErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$InvitationEmailErrorImpl>
    implements _$$InvitationEmailErrorImplCopyWith<$Res> {
  __$$InvitationEmailErrorImplCopyWithImpl(_$InvitationEmailErrorImpl _value,
      $Res Function(_$InvitationEmailErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvitationEmailErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvitationEmailErrorImpl implements InvitationEmailError {
  const _$InvitationEmailErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BaseError.invitationEmailError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationEmailErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationEmailErrorImplCopyWith<_$InvitationEmailErrorImpl>
      get copyWith =>
          __$$InvitationEmailErrorImplCopyWithImpl<_$InvitationEmailErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return invitationEmailError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return invitationEmailError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (invitationEmailError != null) {
      return invitationEmailError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return invitationEmailError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return invitationEmailError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (invitationEmailError != null) {
      return invitationEmailError(this);
    }
    return orElse();
  }
}

abstract class InvitationEmailError implements BaseError {
  const factory InvitationEmailError(final String message) =
      _$InvitationEmailErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InvitationEmailErrorImplCopyWith<_$InvitationEmailErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberErrorImplCopyWith<$Res> {
  factory _$$PhoneNumberErrorImplCopyWith(_$PhoneNumberErrorImpl value,
          $Res Function(_$PhoneNumberErrorImpl) then) =
      __$$PhoneNumberErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PhoneNumberErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$PhoneNumberErrorImpl>
    implements _$$PhoneNumberErrorImplCopyWith<$Res> {
  __$$PhoneNumberErrorImplCopyWithImpl(_$PhoneNumberErrorImpl _value,
      $Res Function(_$PhoneNumberErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PhoneNumberErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberErrorImpl implements PhoneNumberError {
  const _$PhoneNumberErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BaseError.phoneNumberError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberErrorImplCopyWith<_$PhoneNumberErrorImpl> get copyWith =>
      __$$PhoneNumberErrorImplCopyWithImpl<_$PhoneNumberErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return phoneNumberError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return phoneNumberError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (phoneNumberError != null) {
      return phoneNumberError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return phoneNumberError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return phoneNumberError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (phoneNumberError != null) {
      return phoneNumberError(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberError implements BaseError {
  const factory PhoneNumberError(final String message) = _$PhoneNumberErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PhoneNumberErrorImplCopyWith<_$PhoneNumberErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MailAlreadyErrorImplCopyWith<$Res> {
  factory _$$MailAlreadyErrorImplCopyWith(_$MailAlreadyErrorImpl value,
          $Res Function(_$MailAlreadyErrorImpl) then) =
      __$$MailAlreadyErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MailAlreadyErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$MailAlreadyErrorImpl>
    implements _$$MailAlreadyErrorImplCopyWith<$Res> {
  __$$MailAlreadyErrorImplCopyWithImpl(_$MailAlreadyErrorImpl _value,
      $Res Function(_$MailAlreadyErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MailAlreadyErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MailAlreadyErrorImpl implements MailAlreadyError {
  const _$MailAlreadyErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BaseError.mailAlreadyError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MailAlreadyErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MailAlreadyErrorImplCopyWith<_$MailAlreadyErrorImpl> get copyWith =>
      __$$MailAlreadyErrorImplCopyWithImpl<_$MailAlreadyErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return mailAlreadyError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return mailAlreadyError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (mailAlreadyError != null) {
      return mailAlreadyError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return mailAlreadyError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return mailAlreadyError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (mailAlreadyError != null) {
      return mailAlreadyError(this);
    }
    return orElse();
  }
}

abstract class MailAlreadyError implements BaseError {
  const factory MailAlreadyError(final String message) = _$MailAlreadyErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$MailAlreadyErrorImplCopyWith<_$MailAlreadyErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageErrorImplCopyWith<$Res> {
  factory _$$MessageErrorImplCopyWith(
          _$MessageErrorImpl value, $Res Function(_$MessageErrorImpl) then) =
      __$$MessageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String detail});
}

/// @nodoc
class __$$MessageErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$MessageErrorImpl>
    implements _$$MessageErrorImplCopyWith<$Res> {
  __$$MessageErrorImplCopyWithImpl(
      _$MessageErrorImpl _value, $Res Function(_$MessageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? detail = null,
  }) {
    return _then(_$MessageErrorImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageErrorImpl implements MessageError {
  const _$MessageErrorImpl(this.title, this.detail);

  @override
  final String title;
  @override
  final String detail;

  @override
  String toString() {
    return 'BaseError.messageError(title: $title, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageErrorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageErrorImplCopyWith<_$MessageErrorImpl> get copyWith =>
      __$$MessageErrorImplCopyWithImpl<_$MessageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() logOutError,
    required TResult Function(String message) deviceTakenError,
    required TResult Function(String message) activationCodeError,
    required TResult Function(String message) invitationEmailError,
    required TResult Function(String message) phoneNumberError,
    required TResult Function(String message) mailAlreadyError,
    required TResult Function(String title, String detail) messageError,
  }) {
    return messageError(title, detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? logOutError,
    TResult? Function(String message)? deviceTakenError,
    TResult? Function(String message)? activationCodeError,
    TResult? Function(String message)? invitationEmailError,
    TResult? Function(String message)? phoneNumberError,
    TResult? Function(String message)? mailAlreadyError,
    TResult? Function(String title, String detail)? messageError,
  }) {
    return messageError?.call(title, detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? logOutError,
    TResult Function(String message)? deviceTakenError,
    TResult Function(String message)? activationCodeError,
    TResult Function(String message)? invitationEmailError,
    TResult Function(String message)? phoneNumberError,
    TResult Function(String message)? mailAlreadyError,
    TResult Function(String title, String detail)? messageError,
    required TResult orElse(),
  }) {
    if (messageError != null) {
      return messageError(title, detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedError value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(DeviceTakenError value) deviceTakenError,
    required TResult Function(ActivationCodeError value) activationCodeError,
    required TResult Function(InvitationEmailError value) invitationEmailError,
    required TResult Function(PhoneNumberError value) phoneNumberError,
    required TResult Function(MailAlreadyError value) mailAlreadyError,
    required TResult Function(MessageError value) messageError,
  }) {
    return messageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(DeviceTakenError value)? deviceTakenError,
    TResult? Function(ActivationCodeError value)? activationCodeError,
    TResult? Function(InvitationEmailError value)? invitationEmailError,
    TResult? Function(PhoneNumberError value)? phoneNumberError,
    TResult? Function(MailAlreadyError value)? mailAlreadyError,
    TResult? Function(MessageError value)? messageError,
  }) {
    return messageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnAuthorizedError value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(DeviceTakenError value)? deviceTakenError,
    TResult Function(ActivationCodeError value)? activationCodeError,
    TResult Function(InvitationEmailError value)? invitationEmailError,
    TResult Function(PhoneNumberError value)? phoneNumberError,
    TResult Function(MailAlreadyError value)? mailAlreadyError,
    TResult Function(MessageError value)? messageError,
    required TResult orElse(),
  }) {
    if (messageError != null) {
      return messageError(this);
    }
    return orElse();
  }
}

abstract class MessageError implements BaseError {
  const factory MessageError(final String title, final String detail) =
      _$MessageErrorImpl;

  String get title;
  String get detail;
  @JsonKey(ignore: true)
  _$$MessageErrorImplCopyWith<_$MessageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
