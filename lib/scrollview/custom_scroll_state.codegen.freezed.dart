// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_scroll_state.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomScrollState {
  CustomScrollData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomScrollData data) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomScrollData data)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomScrollData data)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomScrollStateCopyWith<CustomScrollState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomScrollStateCopyWith<$Res> {
  factory $CustomScrollStateCopyWith(
          CustomScrollState value, $Res Function(CustomScrollState) then) =
      _$CustomScrollStateCopyWithImpl<$Res, CustomScrollState>;
  @useResult
  $Res call({CustomScrollData data});

  $CustomScrollDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CustomScrollStateCopyWithImpl<$Res, $Val extends CustomScrollState>
    implements $CustomScrollStateCopyWith<$Res> {
  _$CustomScrollStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomScrollData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomScrollDataCopyWith<$Res> get data {
    return $CustomScrollDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res>
    implements $CustomScrollStateCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomScrollData data});

  @override
  $CustomScrollDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$CustomScrollStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EmptyImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomScrollData,
    ));
  }
}

/// @nodoc

class _$EmptyImpl extends Empty {
  const _$EmptyImpl(this.data) : super._();

  @override
  final CustomScrollData data;

  @override
  String toString() {
    return 'CustomScrollState.empty(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomScrollData data) empty,
  }) {
    return empty(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomScrollData data)? empty,
  }) {
    return empty?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomScrollData data)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty extends CustomScrollState {
  const factory Empty(final CustomScrollData data) = _$EmptyImpl;
  const Empty._() : super._();

  @override
  CustomScrollData get data;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomScrollData {
  int get tabIndex => throw _privateConstructorUsedError;
  List<DummyDataType> get fullDataList => throw _privateConstructorUsedError;
  List<DummyDataType> get visibleDataList => throw _privateConstructorUsedError;
  double get scrollOffset => throw _privateConstructorUsedError;
  bool get isDropDownOpened => throw _privateConstructorUsedError;
  int get selectedDropDownIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomScrollDataCopyWith<CustomScrollData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomScrollDataCopyWith<$Res> {
  factory $CustomScrollDataCopyWith(
          CustomScrollData value, $Res Function(CustomScrollData) then) =
      _$CustomScrollDataCopyWithImpl<$Res, CustomScrollData>;
  @useResult
  $Res call(
      {int tabIndex,
      List<DummyDataType> fullDataList,
      List<DummyDataType> visibleDataList,
      double scrollOffset,
      bool isDropDownOpened,
      int selectedDropDownIndex});
}

/// @nodoc
class _$CustomScrollDataCopyWithImpl<$Res, $Val extends CustomScrollData>
    implements $CustomScrollDataCopyWith<$Res> {
  _$CustomScrollDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? fullDataList = null,
    Object? visibleDataList = null,
    Object? scrollOffset = null,
    Object? isDropDownOpened = null,
    Object? selectedDropDownIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      fullDataList: null == fullDataList
          ? _value.fullDataList
          : fullDataList // ignore: cast_nullable_to_non_nullable
              as List<DummyDataType>,
      visibleDataList: null == visibleDataList
          ? _value.visibleDataList
          : visibleDataList // ignore: cast_nullable_to_non_nullable
              as List<DummyDataType>,
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      isDropDownOpened: null == isDropDownOpened
          ? _value.isDropDownOpened
          : isDropDownOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDropDownIndex: null == selectedDropDownIndex
          ? _value.selectedDropDownIndex
          : selectedDropDownIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomScrollDataImplCopyWith<$Res>
    implements $CustomScrollDataCopyWith<$Res> {
  factory _$$CustomScrollDataImplCopyWith(_$CustomScrollDataImpl value,
          $Res Function(_$CustomScrollDataImpl) then) =
      __$$CustomScrollDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int tabIndex,
      List<DummyDataType> fullDataList,
      List<DummyDataType> visibleDataList,
      double scrollOffset,
      bool isDropDownOpened,
      int selectedDropDownIndex});
}

/// @nodoc
class __$$CustomScrollDataImplCopyWithImpl<$Res>
    extends _$CustomScrollDataCopyWithImpl<$Res, _$CustomScrollDataImpl>
    implements _$$CustomScrollDataImplCopyWith<$Res> {
  __$$CustomScrollDataImplCopyWithImpl(_$CustomScrollDataImpl _value,
      $Res Function(_$CustomScrollDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? fullDataList = null,
    Object? visibleDataList = null,
    Object? scrollOffset = null,
    Object? isDropDownOpened = null,
    Object? selectedDropDownIndex = null,
  }) {
    return _then(_$CustomScrollDataImpl(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      fullDataList: null == fullDataList
          ? _value._fullDataList
          : fullDataList // ignore: cast_nullable_to_non_nullable
              as List<DummyDataType>,
      visibleDataList: null == visibleDataList
          ? _value._visibleDataList
          : visibleDataList // ignore: cast_nullable_to_non_nullable
              as List<DummyDataType>,
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      isDropDownOpened: null == isDropDownOpened
          ? _value.isDropDownOpened
          : isDropDownOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDropDownIndex: null == selectedDropDownIndex
          ? _value.selectedDropDownIndex
          : selectedDropDownIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CustomScrollDataImpl implements _CustomScrollData {
  const _$CustomScrollDataImpl(
      {this.tabIndex = 0,
      final List<DummyDataType> fullDataList = const [],
      final List<DummyDataType> visibleDataList = const [],
      this.scrollOffset = 0.0,
      this.isDropDownOpened = false,
      this.selectedDropDownIndex = 0})
      : _fullDataList = fullDataList,
        _visibleDataList = visibleDataList;

  @override
  @JsonKey()
  final int tabIndex;
  final List<DummyDataType> _fullDataList;
  @override
  @JsonKey()
  List<DummyDataType> get fullDataList {
    if (_fullDataList is EqualUnmodifiableListView) return _fullDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fullDataList);
  }

  final List<DummyDataType> _visibleDataList;
  @override
  @JsonKey()
  List<DummyDataType> get visibleDataList {
    if (_visibleDataList is EqualUnmodifiableListView) return _visibleDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleDataList);
  }

  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final bool isDropDownOpened;
  @override
  @JsonKey()
  final int selectedDropDownIndex;

  @override
  String toString() {
    return 'CustomScrollData(tabIndex: $tabIndex, fullDataList: $fullDataList, visibleDataList: $visibleDataList, scrollOffset: $scrollOffset, isDropDownOpened: $isDropDownOpened, selectedDropDownIndex: $selectedDropDownIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomScrollDataImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            const DeepCollectionEquality()
                .equals(other._fullDataList, _fullDataList) &&
            const DeepCollectionEquality()
                .equals(other._visibleDataList, _visibleDataList) &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.isDropDownOpened, isDropDownOpened) ||
                other.isDropDownOpened == isDropDownOpened) &&
            (identical(other.selectedDropDownIndex, selectedDropDownIndex) ||
                other.selectedDropDownIndex == selectedDropDownIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tabIndex,
      const DeepCollectionEquality().hash(_fullDataList),
      const DeepCollectionEquality().hash(_visibleDataList),
      scrollOffset,
      isDropDownOpened,
      selectedDropDownIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomScrollDataImplCopyWith<_$CustomScrollDataImpl> get copyWith =>
      __$$CustomScrollDataImplCopyWithImpl<_$CustomScrollDataImpl>(
          this, _$identity);
}

abstract class _CustomScrollData implements CustomScrollData {
  const factory _CustomScrollData(
      {final int tabIndex,
      final List<DummyDataType> fullDataList,
      final List<DummyDataType> visibleDataList,
      final double scrollOffset,
      final bool isDropDownOpened,
      final int selectedDropDownIndex}) = _$CustomScrollDataImpl;

  @override
  int get tabIndex;
  @override
  List<DummyDataType> get fullDataList;
  @override
  List<DummyDataType> get visibleDataList;
  @override
  double get scrollOffset;
  @override
  bool get isDropDownOpened;
  @override
  int get selectedDropDownIndex;
  @override
  @JsonKey(ignore: true)
  _$$CustomScrollDataImplCopyWith<_$CustomScrollDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
