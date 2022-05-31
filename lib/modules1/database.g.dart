// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserDetail extends DataClass implements Insertable<UserDetail> {
  final int id;
  final String? UserName;
  final String? Email;
  final String? Phone_number;
  final String? DateOfBirth;
  final String? customPhoto;
  UserDetail(
      {required this.id,
      this.UserName,
      this.Email,
      this.Phone_number,
      this.DateOfBirth,
      this.customPhoto});
  factory UserDetail.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserDetail(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      UserName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      Email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      Phone_number: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number']),
      DateOfBirth: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_birth']),
      customPhoto: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}custom_photo']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || UserName != null) {
      map['user_name'] = Variable<String?>(UserName);
    }
    if (!nullToAbsent || Email != null) {
      map['email'] = Variable<String?>(Email);
    }
    if (!nullToAbsent || Phone_number != null) {
      map['phone_number'] = Variable<String?>(Phone_number);
    }
    if (!nullToAbsent || DateOfBirth != null) {
      map['date_of_birth'] = Variable<String?>(DateOfBirth);
    }
    if (!nullToAbsent || customPhoto != null) {
      map['custom_photo'] = Variable<String?>(customPhoto);
    }
    return map;
  }

  UserDetailsCompanion toCompanion(bool nullToAbsent) {
    return UserDetailsCompanion(
      id: Value(id),
      UserName: UserName == null && nullToAbsent
          ? const Value.absent()
          : Value(UserName),
      Email:
          Email == null && nullToAbsent ? const Value.absent() : Value(Email),
      Phone_number: Phone_number == null && nullToAbsent
          ? const Value.absent()
          : Value(Phone_number),
      DateOfBirth: DateOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(DateOfBirth),
      customPhoto: customPhoto == null && nullToAbsent
          ? const Value.absent()
          : Value(customPhoto),
    );
  }

  factory UserDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDetail(
      id: serializer.fromJson<int>(json['id']),
      UserName: serializer.fromJson<String?>(json['UserName']),
      Email: serializer.fromJson<String?>(json['Email']),
      Phone_number: serializer.fromJson<String?>(json['Phone_number']),
      DateOfBirth: serializer.fromJson<String?>(json['DateOfBirth']),
      customPhoto: serializer.fromJson<String?>(json['customPhoto']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'UserName': serializer.toJson<String?>(UserName),
      'Email': serializer.toJson<String?>(Email),
      'Phone_number': serializer.toJson<String?>(Phone_number),
      'DateOfBirth': serializer.toJson<String?>(DateOfBirth),
      'customPhoto': serializer.toJson<String?>(customPhoto),
    };
  }

  UserDetail copyWith(
          {int? id,
          String? UserName,
          String? Email,
          String? Phone_number,
          String? DateOfBirth,
          String? customPhoto}) =>
      UserDetail(
        id: id ?? this.id,
        UserName: UserName ?? this.UserName,
        Email: Email ?? this.Email,
        Phone_number: Phone_number ?? this.Phone_number,
        DateOfBirth: DateOfBirth ?? this.DateOfBirth,
        customPhoto: customPhoto ?? this.customPhoto,
      );
  @override
  String toString() {
    return (StringBuffer('UserDetail(')
          ..write('id: $id, ')
          ..write('UserName: $UserName, ')
          ..write('Email: $Email, ')
          ..write('Phone_number: $Phone_number, ')
          ..write('DateOfBirth: $DateOfBirth, ')
          ..write('customPhoto: $customPhoto')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, UserName, Email, Phone_number, DateOfBirth, customPhoto);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDetail &&
          other.id == this.id &&
          other.UserName == this.UserName &&
          other.Email == this.Email &&
          other.Phone_number == this.Phone_number &&
          other.DateOfBirth == this.DateOfBirth &&
          other.customPhoto == this.customPhoto);
}

class UserDetailsCompanion extends UpdateCompanion<UserDetail> {
  final Value<int> id;
  final Value<String?> UserName;
  final Value<String?> Email;
  final Value<String?> Phone_number;
  final Value<String?> DateOfBirth;
  final Value<String?> customPhoto;
  const UserDetailsCompanion({
    this.id = const Value.absent(),
    this.UserName = const Value.absent(),
    this.Email = const Value.absent(),
    this.Phone_number = const Value.absent(),
    this.DateOfBirth = const Value.absent(),
    this.customPhoto = const Value.absent(),
  });
  UserDetailsCompanion.insert({
    this.id = const Value.absent(),
    this.UserName = const Value.absent(),
    this.Email = const Value.absent(),
    this.Phone_number = const Value.absent(),
    this.DateOfBirth = const Value.absent(),
    this.customPhoto = const Value.absent(),
  });
  static Insertable<UserDetail> custom({
    Expression<int>? id,
    Expression<String?>? UserName,
    Expression<String?>? Email,
    Expression<String?>? Phone_number,
    Expression<String?>? DateOfBirth,
    Expression<String?>? customPhoto,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (UserName != null) 'user_name': UserName,
      if (Email != null) 'email': Email,
      if (Phone_number != null) 'phone_number': Phone_number,
      if (DateOfBirth != null) 'date_of_birth': DateOfBirth,
      if (customPhoto != null) 'custom_photo': customPhoto,
    });
  }

  UserDetailsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? UserName,
      Value<String?>? Email,
      Value<String?>? Phone_number,
      Value<String?>? DateOfBirth,
      Value<String?>? customPhoto}) {
    return UserDetailsCompanion(
      id: id ?? this.id,
      UserName: UserName ?? this.UserName,
      Email: Email ?? this.Email,
      Phone_number: Phone_number ?? this.Phone_number,
      DateOfBirth: DateOfBirth ?? this.DateOfBirth,
      customPhoto: customPhoto ?? this.customPhoto,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (UserName.present) {
      map['user_name'] = Variable<String?>(UserName.value);
    }
    if (Email.present) {
      map['email'] = Variable<String?>(Email.value);
    }
    if (Phone_number.present) {
      map['phone_number'] = Variable<String?>(Phone_number.value);
    }
    if (DateOfBirth.present) {
      map['date_of_birth'] = Variable<String?>(DateOfBirth.value);
    }
    if (customPhoto.present) {
      map['custom_photo'] = Variable<String?>(customPhoto.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDetailsCompanion(')
          ..write('id: $id, ')
          ..write('UserName: $UserName, ')
          ..write('Email: $Email, ')
          ..write('Phone_number: $Phone_number, ')
          ..write('DateOfBirth: $DateOfBirth, ')
          ..write('customPhoto: $customPhoto')
          ..write(')'))
        .toString();
  }
}

class $UserDetailsTable extends UserDetails
    with TableInfo<$UserDetailsTable, UserDetail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDetailsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _UserNameMeta = const VerificationMeta('UserName');
  @override
  late final GeneratedColumn<String?> UserName = GeneratedColumn<String?>(
      'user_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _EmailMeta = const VerificationMeta('Email');
  @override
  late final GeneratedColumn<String?> Email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _Phone_numberMeta =
      const VerificationMeta('Phone_number');
  @override
  late final GeneratedColumn<String?> Phone_number = GeneratedColumn<String?>(
      'phone_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _DateOfBirthMeta =
      const VerificationMeta('DateOfBirth');
  @override
  late final GeneratedColumn<String?> DateOfBirth = GeneratedColumn<String?>(
      'date_of_birth', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _customPhotoMeta =
      const VerificationMeta('customPhoto');
  @override
  late final GeneratedColumn<String?> customPhoto = GeneratedColumn<String?>(
      'custom_photo', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, UserName, Email, Phone_number, DateOfBirth, customPhoto];
  @override
  String get aliasedName => _alias ?? 'user_details';
  @override
  String get actualTableName => 'user_details';
  @override
  VerificationContext validateIntegrity(Insertable<UserDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_UserNameMeta,
          UserName.isAcceptableOrUnknown(data['user_name']!, _UserNameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _EmailMeta, Email.isAcceptableOrUnknown(data['email']!, _EmailMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _Phone_numberMeta,
          Phone_number.isAcceptableOrUnknown(
              data['phone_number']!, _Phone_numberMeta));
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _DateOfBirthMeta,
          DateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _DateOfBirthMeta));
    }
    if (data.containsKey('custom_photo')) {
      context.handle(
          _customPhotoMeta,
          customPhoto.isAcceptableOrUnknown(
              data['custom_photo']!, _customPhotoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserDetail.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserDetailsTable createAlias(String alias) {
    return $UserDetailsTable(attachedDatabase, alias);
  }
}

abstract class _$DataBase extends GeneratedDatabase {
  _$DataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UserDetailsTable userDetails = $UserDetailsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userDetails];
}
