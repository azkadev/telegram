// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tg_client_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTgClientDataCollection on Isar {
  IsarCollection<TgClientData> get tgClientDatas => this.collection();
}

const TgClientDataSchema = CollectionSchema(
  name: r'TgClientData',
  id: 3474112904542498243,
  properties: {
    r'can_join_groups': PropertySchema(
      id: 0,
      name: r'can_join_groups',
      type: IsarType.bool,
    ),
    r'can_read_all_group_messages': PropertySchema(
      id: 1,
      name: r'can_read_all_group_messages',
      type: IsarType.bool,
    ),
    r'client_data': PropertySchema(
      id: 2,
      name: r'client_data',
      type: IsarType.string,
    ),
    r'client_id': PropertySchema(
      id: 3,
      name: r'client_id',
      type: IsarType.long,
    ),
    r'client_token': PropertySchema(
      id: 4,
      name: r'client_token',
      type: IsarType.string,
    ),
    r'client_type': PropertySchema(
      id: 5,
      name: r'client_type',
      type: IsarType.string,
    ),
    r'client_user_id': PropertySchema(
      id: 6,
      name: r'client_user_id',
      type: IsarType.long,
    ),
    r'client_username': PropertySchema(
      id: 7,
      name: r'client_username',
      type: IsarType.string,
    ),
    r'created_at': PropertySchema(
      id: 8,
      name: r'created_at',
      type: IsarType.string,
    ),
    r'expire_date': PropertySchema(
      id: 9,
      name: r'expire_date',
      type: IsarType.long,
    ),
    r'from_bot_type': PropertySchema(
      id: 10,
      name: r'from_bot_type',
      type: IsarType.string,
    ),
    r'from_bot_user_id': PropertySchema(
      id: 11,
      name: r'from_bot_user_id',
      type: IsarType.long,
    ),
    r'is_bot': PropertySchema(
      id: 12,
      name: r'is_bot',
      type: IsarType.bool,
    ),
    r'is_default': PropertySchema(
      id: 13,
      name: r'is_default',
      type: IsarType.bool,
    ),
    r'owner_user_id': PropertySchema(
      id: 14,
      name: r'owner_user_id',
      type: IsarType.long,
    )
  },
  estimateSize: _tgClientDataEstimateSize,
  serialize: _tgClientDataSerialize,
  deserialize: _tgClientDataDeserialize,
  deserializeProp: _tgClientDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tgClientDataGetId,
  getLinks: _tgClientDataGetLinks,
  attach: _tgClientDataAttach,
  version: '3.1.0+1',
);

int _tgClientDataEstimateSize(
  TgClientData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.client_data.length * 3;
  bytesCount += 3 + object.client_token.length * 3;
  bytesCount += 3 + object.client_type.length * 3;
  bytesCount += 3 + object.client_username.length * 3;
  bytesCount += 3 + object.created_at.length * 3;
  bytesCount += 3 + object.from_bot_type.length * 3;
  return bytesCount;
}

void _tgClientDataSerialize(
  TgClientData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.can_join_groups);
  writer.writeBool(offsets[1], object.can_read_all_group_messages);
  writer.writeString(offsets[2], object.client_data);
  writer.writeLong(offsets[3], object.client_id);
  writer.writeString(offsets[4], object.client_token);
  writer.writeString(offsets[5], object.client_type);
  writer.writeLong(offsets[6], object.client_user_id);
  writer.writeString(offsets[7], object.client_username);
  writer.writeString(offsets[8], object.created_at);
  writer.writeLong(offsets[9], object.expire_date);
  writer.writeString(offsets[10], object.from_bot_type);
  writer.writeLong(offsets[11], object.from_bot_user_id);
  writer.writeBool(offsets[12], object.is_bot);
  writer.writeBool(offsets[13], object.is_default);
  writer.writeLong(offsets[14], object.owner_user_id);
}

TgClientData _tgClientDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TgClientData();
  object.can_join_groups = reader.readBool(offsets[0]);
  object.can_read_all_group_messages = reader.readBool(offsets[1]);
  object.client_data = reader.readString(offsets[2]);
  object.client_id = reader.readLong(offsets[3]);
  object.client_token = reader.readString(offsets[4]);
  object.client_type = reader.readString(offsets[5]);
  object.client_user_id = reader.readLong(offsets[6]);
  object.client_username = reader.readString(offsets[7]);
  object.created_at = reader.readString(offsets[8]);
  object.expire_date = reader.readLong(offsets[9]);
  object.from_bot_type = reader.readString(offsets[10]);
  object.from_bot_user_id = reader.readLong(offsets[11]);
  object.id = id;
  object.is_bot = reader.readBool(offsets[12]);
  object.is_default = reader.readBool(offsets[13]);
  object.owner_user_id = reader.readLong(offsets[14]);
  return object;
}

P _tgClientDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tgClientDataGetId(TgClientData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tgClientDataGetLinks(TgClientData object) {
  return [];
}

void _tgClientDataAttach(
    IsarCollection<dynamic> col, Id id, TgClientData object) {
  object.id = id;
}

extension TgClientDataQueryWhereSort
    on QueryBuilder<TgClientData, TgClientData, QWhere> {
  QueryBuilder<TgClientData, TgClientData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TgClientDataQueryWhere
    on QueryBuilder<TgClientData, TgClientData, QWhereClause> {
  QueryBuilder<TgClientData, TgClientData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TgClientData, TgClientData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterWhereClause> idBetween(
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

extension TgClientDataQueryFilter
    on QueryBuilder<TgClientData, TgClientData, QFilterCondition> {
  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      can_join_groupsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_join_groups',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      can_read_all_group_messagesEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_read_all_group_messages',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'client_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'client_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'client_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'client_data',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_data',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'client_data',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_tokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'client_token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_tokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'client_token',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_token',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'client_token',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'client_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'client_type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_type',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'client_type',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'client_username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'client_username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'client_username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'client_username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_username',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      client_usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'client_username',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'created_at',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created_at',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      created_atIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      expire_dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expire_date',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      expire_dateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expire_date',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      expire_dateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expire_date',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      expire_dateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expire_date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from_bot_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'from_bot_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'from_bot_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'from_bot_type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'from_bot_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'from_bot_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'from_bot_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'from_bot_type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from_bot_type',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'from_bot_type',
        value: '',
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from_bot_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'from_bot_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'from_bot_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      from_bot_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'from_bot_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition> is_botEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_bot',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      is_defaultEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_default',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      owner_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'owner_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      owner_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'owner_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      owner_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'owner_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterFilterCondition>
      owner_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'owner_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TgClientDataQueryObject
    on QueryBuilder<TgClientData, TgClientData, QFilterCondition> {}

extension TgClientDataQueryLinks
    on QueryBuilder<TgClientData, TgClientData, QFilterCondition> {}

extension TgClientDataQuerySortBy
    on QueryBuilder<TgClientData, TgClientData, QSortBy> {
  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByCan_join_groups() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_join_groups', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByCan_join_groupsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_join_groups', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByCan_read_all_group_messages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_read_all_group_messages', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByCan_read_all_group_messagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_read_all_group_messages', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByClient_data() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_data', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByClient_dataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_data', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByClient_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByClient_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByClient_token() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByClient_tokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByClient_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByClient_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByClient_username() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_username', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByClient_usernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_username', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByExpire_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByExpire_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByFrom_bot_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_type', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByFrom_bot_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_type', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByFrom_bot_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_user_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByFrom_bot_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_user_id', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByIs_botDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByIs_defaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> sortByOwner_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      sortByOwner_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.desc);
    });
  }
}

extension TgClientDataQuerySortThenBy
    on QueryBuilder<TgClientData, TgClientData, QSortThenBy> {
  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByCan_join_groups() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_join_groups', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByCan_join_groupsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_join_groups', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByCan_read_all_group_messages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_read_all_group_messages', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByCan_read_all_group_messagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can_read_all_group_messages', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByClient_data() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_data', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByClient_dataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_data', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByClient_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByClient_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_id', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByClient_token() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByClient_tokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_token', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByClient_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByClient_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_type', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByClient_username() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_username', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByClient_usernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_username', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByExpire_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByExpire_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByFrom_bot_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_type', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByFrom_bot_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_type', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByFrom_bot_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_user_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByFrom_bot_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from_bot_user_id', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByIs_botDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByIs_defaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_default', Sort.desc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy> thenByOwner_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.asc);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QAfterSortBy>
      thenByOwner_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.desc);
    });
  }
}

extension TgClientDataQueryWhereDistinct
    on QueryBuilder<TgClientData, TgClientData, QDistinct> {
  QueryBuilder<TgClientData, TgClientData, QDistinct>
      distinctByCan_join_groups() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'can_join_groups');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct>
      distinctByCan_read_all_group_messages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'can_read_all_group_messages');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByClient_data(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_data', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByClient_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_id');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByClient_token(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_token', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByClient_type(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct>
      distinctByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_user_id');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByClient_username(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_username',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByCreated_at(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created_at', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByExpire_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expire_date');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByFrom_bot_type(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'from_bot_type',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct>
      distinctByFrom_bot_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'from_bot_user_id');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_bot');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct> distinctByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_default');
    });
  }

  QueryBuilder<TgClientData, TgClientData, QDistinct>
      distinctByOwner_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'owner_user_id');
    });
  }
}

extension TgClientDataQueryProperty
    on QueryBuilder<TgClientData, TgClientData, QQueryProperty> {
  QueryBuilder<TgClientData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TgClientData, bool, QQueryOperations> can_join_groupsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'can_join_groups');
    });
  }

  QueryBuilder<TgClientData, bool, QQueryOperations>
      can_read_all_group_messagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'can_read_all_group_messages');
    });
  }

  QueryBuilder<TgClientData, String, QQueryOperations> client_dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_data');
    });
  }

  QueryBuilder<TgClientData, int, QQueryOperations> client_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_id');
    });
  }

  QueryBuilder<TgClientData, String, QQueryOperations> client_tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_token');
    });
  }

  QueryBuilder<TgClientData, String, QQueryOperations> client_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_type');
    });
  }

  QueryBuilder<TgClientData, int, QQueryOperations> client_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_user_id');
    });
  }

  QueryBuilder<TgClientData, String, QQueryOperations>
      client_usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_username');
    });
  }

  QueryBuilder<TgClientData, String, QQueryOperations> created_atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created_at');
    });
  }

  QueryBuilder<TgClientData, int, QQueryOperations> expire_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expire_date');
    });
  }

  QueryBuilder<TgClientData, String, QQueryOperations> from_bot_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'from_bot_type');
    });
  }

  QueryBuilder<TgClientData, int, QQueryOperations> from_bot_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'from_bot_user_id');
    });
  }

  QueryBuilder<TgClientData, bool, QQueryOperations> is_botProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_bot');
    });
  }

  QueryBuilder<TgClientData, bool, QQueryOperations> is_defaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_default');
    });
  }

  QueryBuilder<TgClientData, int, QQueryOperations> owner_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'owner_user_id');
    });
  }
}
