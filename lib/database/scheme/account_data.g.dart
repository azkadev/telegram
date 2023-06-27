// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAccountDataCollection on Isar {
  IsarCollection<AccountData> get accountDatas => this.collection();
}

const AccountDataSchema = CollectionSchema(
  name: r'AccountData',
  id: -5354960367546899412,
  properties: {
    r'client_id': PropertySchema(
      id: 0,
      name: r'client_id',
      type: IsarType.long,
    ),
    r'client_token': PropertySchema(
      id: 1,
      name: r'client_token',
      type: IsarType.string,
    ),
    r'client_type': PropertySchema(
      id: 2,
      name: r'client_type',
      type: IsarType.string,
    ),
    r'client_user_id': PropertySchema(
      id: 3,
      name: r'client_user_id',
      type: IsarType.long,
    ),
    r'first_name': PropertySchema(
      id: 4,
      name: r'first_name',
      type: IsarType.string,
    ),
    r'is_bot': PropertySchema(
      id: 5,
      name: r'is_bot',
      type: IsarType.bool,
    ),
    r'is_default': PropertySchema(
      id: 6,
      name: r'is_default',
      type: IsarType.bool,
    ),
    r'last_name': PropertySchema(
      id: 7,
      name: r'last_name',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 8,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _accountDataEstimateSize,
  serialize: _accountDataSerialize,
  deserialize: _accountDataDeserialize,
  deserializeProp: _accountDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _accountDataGetId,
  getLinks: _accountDataGetLinks,
  attach: _accountDataAttach,
  version: '3.1.0+1',
);

int _accountDataEstimateSize(
  AccountData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.client_token.length * 3;
  bytesCount += 3 + object.client_type.length * 3;
  bytesCount += 3 + object.first_name.length * 3;
  bytesCount += 3 + object.last_name.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _accountDataSerialize(
  AccountData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.client_id);
  writer.writeString(offsets[1], object.client_token);
  writer.writeString(offsets[2], object.client_type);
  writer.writeLong(offsets[3], object.client_user_id);
  writer.writeString(offsets[4], object.first_name);
  writer.writeBool(offsets[5], object.is_bot);
  writer.writeBool(offsets[6], object.is_default);
  writer.writeString(offsets[7], object.last_name);
  writer.writeString(offsets[8], object.username);
}

AccountData _accountDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AccountData();
  object.client_id = reader.readLong(offsets[0]);
  object.client_token = reader.readString(offsets[1]);
  object.client_type = reader.readString(offsets[2]);
  object.client_user_id = reader.readLong(offsets[3]);
  object.first_name = reader.readString(offsets[4]);
  object.id = id;
  object.is_bot = reader.readBool(offsets[5]);
  object.is_default = reader.readBool(offsets[6]);
  object.last_name = reader.readString(offsets[7]);
  object.username = reader.readString(offsets[8]);
  return object;
}

P _accountDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _accountDataGetId(AccountData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _accountDataGetLinks(AccountData object) {
  return [];
}

void _accountDataAttach(
    IsarCollection<dynamic> col, Id id, AccountData object) {
  object.id = id;
}

extension AccountDataQueryWhereSort
    on QueryBuilder<AccountData, AccountData, QWhere> {
  QueryBuilder<AccountData, AccountData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AccountDataQueryWhere
    on QueryBuilder<AccountData, AccountData, QWhereClause> {
  QueryBuilder<AccountData, AccountData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AccountDataQueryFilter
    on QueryBuilder<AccountData, AccountData, QFilterCondition> {
  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_token',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'client_token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'client_token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'client_token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'client_token',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_token',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'client_token',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'client_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'client_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'client_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'client_type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_type',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'client_type',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      client_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'first_name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'first_name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'first_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      first_nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'first_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> is_botEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_bot',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      is_defaultEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_default',
        value: value,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'last_name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'last_name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'last_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      last_nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'last_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension AccountDataQueryObject
    on QueryBuilder<AccountData, AccountData, QFilterCondition> {}

extension AccountDataQueryLinks
    on QueryBuilder<AccountData, AccountData, QFilterCondition> {}

extension AccountDataQuerySortBy
    on QueryBuilder<AccountData, AccountData, QSortBy> {
  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByClient_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByClient_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByClient_token() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy>
      sortByClient_tokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByClient_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByClient_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy>
      sortByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByFirst_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByFirst_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByIs_botDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByIs_defaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByLast_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByLast_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AccountDataQuerySortThenBy
    on QueryBuilder<AccountData, AccountData, QSortThenBy> {
  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByClient_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByClient_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByClient_token() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy>
      thenByClient_tokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByClient_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByClient_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy>
      thenByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByFirst_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByFirst_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByIs_botDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByIs_defaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByLast_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByLast_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.desc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<AccountData, AccountData, QAfterSortBy> thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AccountDataQueryWhereDistinct
    on QueryBuilder<AccountData, AccountData, QDistinct> {
  QueryBuilder<AccountData, AccountData, QDistinct> distinctByClient_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_id');
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByClient_token(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_token', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByClient_type(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_user_id');
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByFirst_name(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'first_name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_bot');
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_default');
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByLast_name(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'last_name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountData, AccountData, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension AccountDataQueryProperty
    on QueryBuilder<AccountData, AccountData, QQueryProperty> {
  QueryBuilder<AccountData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AccountData, int, QQueryOperations> client_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_id');
    });
  }

  QueryBuilder<AccountData, String, QQueryOperations> client_tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_token');
    });
  }

  QueryBuilder<AccountData, String, QQueryOperations> client_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_type');
    });
  }

  QueryBuilder<AccountData, int, QQueryOperations> client_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_user_id');
    });
  }

  QueryBuilder<AccountData, String, QQueryOperations> first_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'first_name');
    });
  }

  QueryBuilder<AccountData, bool, QQueryOperations> is_botProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_bot');
    });
  }

  QueryBuilder<AccountData, bool, QQueryOperations> is_defaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_default');
    });
  }

  QueryBuilder<AccountData, String, QQueryOperations> last_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'last_name');
    });
  }

  QueryBuilder<AccountData, String, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}
