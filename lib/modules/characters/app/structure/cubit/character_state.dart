import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default([]) List<CharacterDTO> characters,
    //  List<CharacterDTO>? characters2,
  }) = _CharacterState;
}
