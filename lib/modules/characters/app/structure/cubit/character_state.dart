import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';

part 'character_state.freezed.dart';

enum FiltersCharacters { inital, favs }

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default([]) List<CharacterDTO> characters,
    @Default([]) List<CharacterDTO> charactersFavs,
    @Default(FiltersCharacters.inital) filters,
    int? myPage,
    //  List<CharacterDTO>? characters2,
  }) = _CharacterState;
}
