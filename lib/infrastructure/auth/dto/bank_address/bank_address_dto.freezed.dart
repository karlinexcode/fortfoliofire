// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAddressDTO _$BankAddressDTOFromJson(Map<String, dynamic> json) {
  return _BankAddressDTO.fromJson(json);
}

/// @nodoc
mixin _$BankAddressDTO {
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get trax => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAddressDTOCopyWith<BankAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAddressDTOCopyWith<$Res> {
  factory $BankAddressDTOCopyWith(
          BankAddressDTO value, $Res Function(BankAddressDTO) then) =
      _$BankAddressDTOCopyWithImpl<$Res>;
  $Res call(
      {String bankName,
      String accountNumber,
      String userName,
      String id,
      String trax,
      String type});
}

/// @nodoc
class _$BankAddressDTOCopyWithImpl<$Res>
    implements $BankAddressDTOCopyWith<$Res> {
  _$BankAddressDTOCopyWithImpl(this._value, this._then);

  final BankAddressDTO _value;
  // ignore: unused_field
  final $Res Function(BankAddressDTO) _then;

  @override
  $Res call({
    Object? bankName = freezed,
    Object? accountNumber = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? trax = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: trax == freezed
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BankAddressDTOCopyWith<$Res>
    implements $BankAddressDTOCopyWith<$Res> {
  factory _$$_BankAddressDTOCopyWith(
          _$_BankAddressDTO value, $Res Function(_$_BankAddressDTO) then) =
      __$$_BankAddressDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String bankName,
      String accountNumber,
      String userName,
      String id,
      String trax,
      String type});
}

/// @nodoc
class __$$_BankAddressDTOCopyWithImpl<$Res>
    extends _$BankAddressDTOCopyWithImpl<$Res>
    implements _$$_BankAddressDTOCopyWith<$Res> {
  __$$_BankAddressDTOCopyWithImpl(
      _$_BankAddressDTO _value, $Res Function(_$_BankAddressDTO) _then)
      : super(_value, (v) => _then(v as _$_BankAddressDTO));

  @override
  _$_BankAddressDTO get _value => super._value as _$_BankAddressDTO;

  @override
  $Res call({
    Object? bankName = freezed,
    Object? accountNumber = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? trax = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_BankAddressDTO(
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: trax == freezed
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankAddressDTO extends _BankAddressDTO {
  const _$_BankAddressDTO(
      {required this.bankName,
      required this.accountNumber,
      required this.userName,
      required this.id,
      required this.trax,
      required this.type})
      : super._();

  factory _$_BankAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BankAddressDTOFromJson(json);

  @override
  final String bankName;
  @override
  final String accountNumber;
  @override
  final String userName;
  @override
  final String id;
  @override
  final String trax;
  @override
  final String type;

  @override
  String toString() {
    return 'BankAddressDTO(bankName: $bankName, accountNumber: $accountNumber, userName: $userName, id: $id, trax: $trax, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankAddressDTO &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.trax, trax) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(trax),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_BankAddressDTOCopyWith<_$_BankAddressDTO> get copyWith =>
      __$$_BankAddressDTOCopyWithImpl<_$_BankAddressDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAddressDTOToJson(
      this,
    );
  }
}

abstract class _BankAddressDTO extends BankAddressDTO {
  const factory _BankAddressDTO(
      {required final String bankName,
      required final String accountNumber,
      required final String userName,
      required final String id,
      required final String trax,
      required final String type}) = _$_BankAddressDTO;
  const _BankAddressDTO._() : super._();

  factory _BankAddressDTO.fromJson(Map<String, dynamic> json) =
      _$_BankAddressDTO.fromJson;

  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  String get userName;
  @override
  String get id;
  @override
  String get trax;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_BankAddressDTOCopyWith<_$_BankAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
