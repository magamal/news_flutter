// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_articles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsArticlesResponse {

 String? get status; int? get totalResults; List<ArticleDto>? get articles;
/// Create a copy of NewsArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsArticlesResponseCopyWith<NewsArticlesResponse> get copyWith => _$NewsArticlesResponseCopyWithImpl<NewsArticlesResponse>(this as NewsArticlesResponse, _$identity);

  /// Serializes this NewsArticlesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsArticlesResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'NewsArticlesResponse(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $NewsArticlesResponseCopyWith<$Res>  {
  factory $NewsArticlesResponseCopyWith(NewsArticlesResponse value, $Res Function(NewsArticlesResponse) _then) = _$NewsArticlesResponseCopyWithImpl;
@useResult
$Res call({
 String? status, int? totalResults, List<ArticleDto>? articles
});




}
/// @nodoc
class _$NewsArticlesResponseCopyWithImpl<$Res>
    implements $NewsArticlesResponseCopyWith<$Res> {
  _$NewsArticlesResponseCopyWithImpl(this._self, this._then);

  final NewsArticlesResponse _self;
  final $Res Function(NewsArticlesResponse) _then;

/// Create a copy of NewsArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? totalResults = freezed,Object? articles = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsArticlesResponse].
extension NewsArticlesResponsePatterns on NewsArticlesResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsArticlesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsArticlesResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsArticlesResponse value)  $default,){
final _that = this;
switch (_that) {
case _NewsArticlesResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsArticlesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NewsArticlesResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  int? totalResults,  List<ArticleDto>? articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsArticlesResponse() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  int? totalResults,  List<ArticleDto>? articles)  $default,) {final _that = this;
switch (_that) {
case _NewsArticlesResponse():
return $default(_that.status,_that.totalResults,_that.articles);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  int? totalResults,  List<ArticleDto>? articles)?  $default,) {final _that = this;
switch (_that) {
case _NewsArticlesResponse() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsArticlesResponse implements NewsArticlesResponse {
  const _NewsArticlesResponse({required this.status, required this.totalResults, required final  List<ArticleDto>? articles}): _articles = articles;
  factory _NewsArticlesResponse.fromJson(Map<String, dynamic> json) => _$NewsArticlesResponseFromJson(json);

@override final  String? status;
@override final  int? totalResults;
 final  List<ArticleDto>? _articles;
@override List<ArticleDto>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of NewsArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsArticlesResponseCopyWith<_NewsArticlesResponse> get copyWith => __$NewsArticlesResponseCopyWithImpl<_NewsArticlesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsArticlesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsArticlesResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'NewsArticlesResponse(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$NewsArticlesResponseCopyWith<$Res> implements $NewsArticlesResponseCopyWith<$Res> {
  factory _$NewsArticlesResponseCopyWith(_NewsArticlesResponse value, $Res Function(_NewsArticlesResponse) _then) = __$NewsArticlesResponseCopyWithImpl;
@override @useResult
$Res call({
 String? status, int? totalResults, List<ArticleDto>? articles
});




}
/// @nodoc
class __$NewsArticlesResponseCopyWithImpl<$Res>
    implements _$NewsArticlesResponseCopyWith<$Res> {
  __$NewsArticlesResponseCopyWithImpl(this._self, this._then);

  final _NewsArticlesResponse _self;
  final $Res Function(_NewsArticlesResponse) _then;

/// Create a copy of NewsArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? totalResults = freezed,Object? articles = freezed,}) {
  return _then(_NewsArticlesResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDto>?,
  ));
}


}


/// @nodoc
mixin _$ArticleDto {

 SourceDto? get source; String? get author; String? get title; String? get description; String? get url; String? get urlToImage; String? get publishedAt; String? get content;
/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDtoCopyWith<ArticleDto> get copyWith => _$ArticleDtoCopyWithImpl<ArticleDto>(this as ArticleDto, _$identity);

  /// Serializes this ArticleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDto&&(identical(other.source, source) || other.source == source)&&(identical(other.author, author) || other.author == author)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.urlToImage, urlToImage) || other.urlToImage == urlToImage)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,author,title,description,url,urlToImage,publishedAt,content);

@override
String toString() {
  return 'ArticleDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
}


}

/// @nodoc
abstract mixin class $ArticleDtoCopyWith<$Res>  {
  factory $ArticleDtoCopyWith(ArticleDto value, $Res Function(ArticleDto) _then) = _$ArticleDtoCopyWithImpl;
@useResult
$Res call({
 SourceDto? source, String? author, String? title, String? description, String? url, String? urlToImage, String? publishedAt, String? content
});


$SourceDtoCopyWith<$Res>? get source;

}
/// @nodoc
class _$ArticleDtoCopyWithImpl<$Res>
    implements $ArticleDtoCopyWith<$Res> {
  _$ArticleDtoCopyWithImpl(this._self, this._then);

  final ArticleDto _self;
  final $Res Function(ArticleDto) _then;

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = freezed,Object? author = freezed,Object? title = freezed,Object? description = freezed,Object? url = freezed,Object? urlToImage = freezed,Object? publishedAt = freezed,Object? content = freezed,}) {
  return _then(_self.copyWith(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SourceDto?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,urlToImage: freezed == urlToImage ? _self.urlToImage : urlToImage // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceDtoCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $SourceDtoCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticleDto].
extension ArticleDtoPatterns on ArticleDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDto value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDto value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SourceDto? source,  String? author,  String? title,  String? description,  String? url,  String? urlToImage,  String? publishedAt,  String? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SourceDto? source,  String? author,  String? title,  String? description,  String? url,  String? urlToImage,  String? publishedAt,  String? content)  $default,) {final _that = this;
switch (_that) {
case _ArticleDto():
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SourceDto? source,  String? author,  String? title,  String? description,  String? url,  String? urlToImage,  String? publishedAt,  String? content)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDto implements ArticleDto {
  const _ArticleDto({required this.source, required this.author, required this.title, required this.description, required this.url, required this.urlToImage, required this.publishedAt, required this.content});
  factory _ArticleDto.fromJson(Map<String, dynamic> json) => _$ArticleDtoFromJson(json);

@override final  SourceDto? source;
@override final  String? author;
@override final  String? title;
@override final  String? description;
@override final  String? url;
@override final  String? urlToImage;
@override final  String? publishedAt;
@override final  String? content;

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDtoCopyWith<_ArticleDto> get copyWith => __$ArticleDtoCopyWithImpl<_ArticleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDto&&(identical(other.source, source) || other.source == source)&&(identical(other.author, author) || other.author == author)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.urlToImage, urlToImage) || other.urlToImage == urlToImage)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,author,title,description,url,urlToImage,publishedAt,content);

@override
String toString() {
  return 'ArticleDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
}


}

/// @nodoc
abstract mixin class _$ArticleDtoCopyWith<$Res> implements $ArticleDtoCopyWith<$Res> {
  factory _$ArticleDtoCopyWith(_ArticleDto value, $Res Function(_ArticleDto) _then) = __$ArticleDtoCopyWithImpl;
@override @useResult
$Res call({
 SourceDto? source, String? author, String? title, String? description, String? url, String? urlToImage, String? publishedAt, String? content
});


@override $SourceDtoCopyWith<$Res>? get source;

}
/// @nodoc
class __$ArticleDtoCopyWithImpl<$Res>
    implements _$ArticleDtoCopyWith<$Res> {
  __$ArticleDtoCopyWithImpl(this._self, this._then);

  final _ArticleDto _self;
  final $Res Function(_ArticleDto) _then;

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = freezed,Object? author = freezed,Object? title = freezed,Object? description = freezed,Object? url = freezed,Object? urlToImage = freezed,Object? publishedAt = freezed,Object? content = freezed,}) {
  return _then(_ArticleDto(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SourceDto?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,urlToImage: freezed == urlToImage ? _self.urlToImage : urlToImage // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceDtoCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $SourceDtoCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// @nodoc
mixin _$SourceDto {

 String? get id; String? get name;
/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceDtoCopyWith<SourceDto> get copyWith => _$SourceDtoCopyWithImpl<SourceDto>(this as SourceDto, _$identity);

  /// Serializes this SourceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SourceDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $SourceDtoCopyWith<$Res>  {
  factory $SourceDtoCopyWith(SourceDto value, $Res Function(SourceDto) _then) = _$SourceDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$SourceDtoCopyWithImpl<$Res>
    implements $SourceDtoCopyWith<$Res> {
  _$SourceDtoCopyWithImpl(this._self, this._then);

  final SourceDto _self;
  final $Res Function(SourceDto) _then;

/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SourceDto].
extension SourceDtoPatterns on SourceDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceDto value)  $default,){
final _that = this;
switch (_that) {
case _SourceDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceDto value)?  $default,){
final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _SourceDto():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SourceDto implements SourceDto {
  const _SourceDto({required this.id, required this.name});
  factory _SourceDto.fromJson(Map<String, dynamic> json) => _$SourceDtoFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceDtoCopyWith<_SourceDto> get copyWith => __$SourceDtoCopyWithImpl<_SourceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SourceDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SourceDtoCopyWith<$Res> implements $SourceDtoCopyWith<$Res> {
  factory _$SourceDtoCopyWith(_SourceDto value, $Res Function(_SourceDto) _then) = __$SourceDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$SourceDtoCopyWithImpl<$Res>
    implements _$SourceDtoCopyWith<$Res> {
  __$SourceDtoCopyWithImpl(this._self, this._then);

  final _SourceDto _self;
  final $Res Function(_SourceDto) _then;

/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_SourceDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
