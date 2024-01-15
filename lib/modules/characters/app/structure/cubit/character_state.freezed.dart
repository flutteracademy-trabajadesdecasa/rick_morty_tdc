// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterState {
  List<CharacterDTO> get characters => throw _privateConstructorUsedError;
  List<CharacterDTO> get charactersFavs => throw _privateConstructorUsedError;
  dynamic get filters => throw _privateConstructorUsedError;
  int? get myPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call(
      {List<CharacterDTO> characters,
      List<CharacterDTO> charactersFavs,
      dynamic filters,
      int? myPage});
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? charactersFavs = null,
    Object? filters = freezed,
    Object? myPage = freezed,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
      charactersFavs: null == charactersFavs
          ? _value.charactersFavs
          : charactersFavs // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as dynamic,
      myPage: freezed == myPage
          ? _value.myPage
          : myPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterStateImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$CharacterStateImplCopyWith(_$CharacterStateImpl value,
          $Res Function(_$CharacterStateImpl) then) =
      __$$CharacterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CharacterDTO> characters,
      List<CharacterDTO> charactersFavs,
      dynamic filters,
      int? myPage});
}

/// @nodoc
class __$$CharacterStateImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateImpl>
    implements _$$CharacterStateImplCopyWith<$Res> {
  __$$CharacterStateImplCopyWithImpl(
      _$CharacterStateImpl _value, $Res Function(_$CharacterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? charactersFavs = null,
    Object? filters = freezed,
    Object? myPage = freezed,
  }) {
    return _then(_$CharacterStateImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
      charactersFavs: null == charactersFavs
          ? _value._charactersFavs
          : charactersFavs // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
      filters: freezed == filters ? _value.filters! : filters,
      myPage: freezed == myPage
          ? _value.myPage
          : myPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CharacterStateImpl implements _CharacterState {
  const _$CharacterStateImpl(
      {final List<CharacterDTO> characters = const [],
      final List<CharacterDTO> charactersFavs = const [],
      this.filters = FiltersCharacters.inital,
      this.myPage})
      : _characters = characters,
        _charactersFavs = charactersFavs;

  final List<CharacterDTO> _characters;
  @override
  @JsonKey()
  List<CharacterDTO> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<CharacterDTO> _charactersFavs;
  @override
  @JsonKey()
  List<CharacterDTO> get charactersFavs {
    if (_charactersFavs is EqualUnmodifiableListView) return _charactersFavs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charactersFavs);
  }

  @override
  @JsonKey()
  final dynamic filters;
  @override
  final int? myPage;

  @override
  String toString() {
    return 'CharacterState(characters: $characters, charactersFavs: $charactersFavs, filters: $filters, myPage: $myPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._charactersFavs, _charactersFavs) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            (identical(other.myPage, myPage) || other.myPage == myPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_charactersFavs),
      const DeepCollectionEquality().hash(filters),
      myPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      __$$CharacterStateImplCopyWithImpl<_$CharacterStateImpl>(
          this, _$identity);
}

abstract class _CharacterState implements CharacterState {
  const factory _CharacterState(
      {final List<CharacterDTO> characters,
      final List<CharacterDTO> charactersFavs,
      final dynamic filters,
      final int? myPage}) = _$CharacterStateImpl;

  @override
  List<CharacterDTO> get characters;
  @override
  List<CharacterDTO> get charactersFavs;
  @override
  dynamic get filters;
  @override
  int? get myPage;
  @override
  @JsonKey(ignore: true)
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
