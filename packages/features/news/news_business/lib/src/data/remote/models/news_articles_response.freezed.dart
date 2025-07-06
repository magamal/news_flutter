// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_articles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsArticlesResponse _$NewsArticlesResponseFromJson(Map<String, dynamic> json) {
  return _NewsArticlesResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsArticlesResponse {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleDto>? get articles => throw _privateConstructorUsedError;

  /// Serializes this NewsArticlesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsArticlesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsArticlesResponseCopyWith<NewsArticlesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticlesResponseCopyWith<$Res> {
  factory $NewsArticlesResponseCopyWith(NewsArticlesResponse value,
          $Res Function(NewsArticlesResponse) then) =
      _$NewsArticlesResponseCopyWithImpl<$Res, NewsArticlesResponse>;
  @useResult
  $Res call({String? status, int? totalResults, List<ArticleDto>? articles});
}

/// @nodoc
class _$NewsArticlesResponseCopyWithImpl<$Res,
        $Val extends NewsArticlesResponse>
    implements $NewsArticlesResponseCopyWith<$Res> {
  _$NewsArticlesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsArticlesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsArticlesResponseImplCopyWith<$Res>
    implements $NewsArticlesResponseCopyWith<$Res> {
  factory _$$NewsArticlesResponseImplCopyWith(_$NewsArticlesResponseImpl value,
          $Res Function(_$NewsArticlesResponseImpl) then) =
      __$$NewsArticlesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, int? totalResults, List<ArticleDto>? articles});
}

/// @nodoc
class __$$NewsArticlesResponseImplCopyWithImpl<$Res>
    extends _$NewsArticlesResponseCopyWithImpl<$Res, _$NewsArticlesResponseImpl>
    implements _$$NewsArticlesResponseImplCopyWith<$Res> {
  __$$NewsArticlesResponseImplCopyWithImpl(_$NewsArticlesResponseImpl _value,
      $Res Function(_$NewsArticlesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsArticlesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$NewsArticlesResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsArticlesResponseImpl implements _NewsArticlesResponse {
  const _$NewsArticlesResponseImpl(
      {required this.status,
      required this.totalResults,
      required final List<ArticleDto>? articles})
      : _articles = articles;

  factory _$NewsArticlesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsArticlesResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<ArticleDto>? _articles;
  @override
  List<ArticleDto>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsArticlesResponse(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticlesResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  /// Create a copy of NewsArticlesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticlesResponseImplCopyWith<_$NewsArticlesResponseImpl>
      get copyWith =>
          __$$NewsArticlesResponseImplCopyWithImpl<_$NewsArticlesResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsArticlesResponseImplToJson(
      this,
    );
  }
}

abstract class _NewsArticlesResponse implements NewsArticlesResponse {
  const factory _NewsArticlesResponse(
      {required final String? status,
      required final int? totalResults,
      required final List<ArticleDto>? articles}) = _$NewsArticlesResponseImpl;

  factory _NewsArticlesResponse.fromJson(Map<String, dynamic> json) =
      _$NewsArticlesResponseImpl.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<ArticleDto>? get articles;

  /// Create a copy of NewsArticlesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsArticlesResponseImplCopyWith<_$NewsArticlesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) {
  return _ArticleDto.fromJson(json);
}

/// @nodoc
mixin _$ArticleDto {
  SourceDto? get source => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this ArticleDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleDtoCopyWith<ArticleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDtoCopyWith<$Res> {
  factory $ArticleDtoCopyWith(
          ArticleDto value, $Res Function(ArticleDto) then) =
      _$ArticleDtoCopyWithImpl<$Res, ArticleDto>;
  @useResult
  $Res call(
      {SourceDto? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  $SourceDtoCopyWith<$Res>? get source;
}

/// @nodoc
class _$ArticleDtoCopyWithImpl<$Res, $Val extends ArticleDto>
    implements $ArticleDtoCopyWith<$Res> {
  _$ArticleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceDto?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ArticleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SourceDtoCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $SourceDtoCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleDtoImplCopyWith<$Res>
    implements $ArticleDtoCopyWith<$Res> {
  factory _$$ArticleDtoImplCopyWith(
          _$ArticleDtoImpl value, $Res Function(_$ArticleDtoImpl) then) =
      __$$ArticleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SourceDto? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  @override
  $SourceDtoCopyWith<$Res>? get source;
}

/// @nodoc
class __$$ArticleDtoImplCopyWithImpl<$Res>
    extends _$ArticleDtoCopyWithImpl<$Res, _$ArticleDtoImpl>
    implements _$$ArticleDtoImplCopyWith<$Res> {
  __$$ArticleDtoImplCopyWithImpl(
      _$ArticleDtoImpl _value, $Res Function(_$ArticleDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$ArticleDtoImpl(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceDto?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleDtoImpl implements _ArticleDto {
  const _$ArticleDtoImpl(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory _$ArticleDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleDtoImplFromJson(json);

  @override
  final SourceDto? source;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final String? publishedAt;
  @override
  final String? content;

  @override
  String toString() {
    return 'ArticleDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleDtoImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, author, title,
      description, url, urlToImage, publishedAt, content);

  /// Create a copy of ArticleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleDtoImplCopyWith<_$ArticleDtoImpl> get copyWith =>
      __$$ArticleDtoImplCopyWithImpl<_$ArticleDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleDtoImplToJson(
      this,
    );
  }
}

abstract class _ArticleDto implements ArticleDto {
  const factory _ArticleDto(
      {required final SourceDto? source,
      required final String? author,
      required final String? title,
      required final String? description,
      required final String? url,
      required final String? urlToImage,
      required final String? publishedAt,
      required final String? content}) = _$ArticleDtoImpl;

  factory _ArticleDto.fromJson(Map<String, dynamic> json) =
      _$ArticleDtoImpl.fromJson;

  @override
  SourceDto? get source;
  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get urlToImage;
  @override
  String? get publishedAt;
  @override
  String? get content;

  /// Create a copy of ArticleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleDtoImplCopyWith<_$ArticleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceDto _$SourceDtoFromJson(Map<String, dynamic> json) {
  return _SourceDto.fromJson(json);
}

/// @nodoc
mixin _$SourceDto {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SourceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceDtoCopyWith<SourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceDtoCopyWith<$Res> {
  factory $SourceDtoCopyWith(SourceDto value, $Res Function(SourceDto) then) =
      _$SourceDtoCopyWithImpl<$Res, SourceDto>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SourceDtoCopyWithImpl<$Res, $Val extends SourceDto>
    implements $SourceDtoCopyWith<$Res> {
  _$SourceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceDtoImplCopyWith<$Res>
    implements $SourceDtoCopyWith<$Res> {
  factory _$$SourceDtoImplCopyWith(
          _$SourceDtoImpl value, $Res Function(_$SourceDtoImpl) then) =
      __$$SourceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$SourceDtoImplCopyWithImpl<$Res>
    extends _$SourceDtoCopyWithImpl<$Res, _$SourceDtoImpl>
    implements _$$SourceDtoImplCopyWith<$Res> {
  __$$SourceDtoImplCopyWithImpl(
      _$SourceDtoImpl _value, $Res Function(_$SourceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SourceDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceDtoImpl implements _SourceDto {
  const _$SourceDtoImpl({required this.id, required this.name});

  factory _$SourceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SourceDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SourceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceDtoImplCopyWith<_$SourceDtoImpl> get copyWith =>
      __$$SourceDtoImplCopyWithImpl<_$SourceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceDtoImplToJson(
      this,
    );
  }
}

abstract class _SourceDto implements SourceDto {
  const factory _SourceDto(
      {required final String? id,
      required final String? name}) = _$SourceDtoImpl;

  factory _SourceDto.fromJson(Map<String, dynamic> json) =
      _$SourceDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of SourceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceDtoImplCopyWith<_$SourceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
