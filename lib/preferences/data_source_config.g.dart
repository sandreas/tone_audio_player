// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_config.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDataSourceConfigCollection on Isar {
  IsarCollection<DataSourceConfig> get dataSourceConfigs => this.collection();
}

const DataSourceConfigSchema = CollectionSchema(
  name: r'DataSourceConfig',
  id: -8337133052089130084,
  properties: {},
  estimateSize: _dataSourceConfigEstimateSize,
  serialize: _dataSourceConfigSerialize,
  deserialize: _dataSourceConfigDeserialize,
  deserializeProp: _dataSourceConfigDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dataSourceConfigGetId,
  getLinks: _dataSourceConfigGetLinks,
  attach: _dataSourceConfigAttach,
  version: '3.1.0+1',
);

int _dataSourceConfigEstimateSize(
  DataSourceConfig object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _dataSourceConfigSerialize(
  DataSourceConfig object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
DataSourceConfig _dataSourceConfigDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DataSourceConfig();
  object.id = id;
  return object;
}

P _dataSourceConfigDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dataSourceConfigGetId(DataSourceConfig object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dataSourceConfigGetLinks(DataSourceConfig object) {
  return [];
}

void _dataSourceConfigAttach(
    IsarCollection<dynamic> col, Id id, DataSourceConfig object) {
  object.id = id;
}

extension DataSourceConfigQueryWhereSort
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QWhere> {
  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DataSourceConfigQueryWhere
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QWhereClause> {
  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterWhereClause> idBetween(
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

extension DataSourceConfigQueryFilter
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QFilterCondition> {
  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterFilterCondition>
      idBetween(
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
}

extension DataSourceConfigQueryObject
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QFilterCondition> {}

extension DataSourceConfigQueryLinks
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QFilterCondition> {}

extension DataSourceConfigQuerySortBy
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QSortBy> {}

extension DataSourceConfigQuerySortThenBy
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QSortThenBy> {
  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DataSourceConfig, DataSourceConfig, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DataSourceConfigQueryWhereDistinct
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QDistinct> {}

extension DataSourceConfigQueryProperty
    on QueryBuilder<DataSourceConfig, DataSourceConfig, QQueryProperty> {
  QueryBuilder<DataSourceConfig, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
