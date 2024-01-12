import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_state.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:rick_morty_tdc/modules/characters/data/services/character_api_services.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(const CharacterState());

  CharacterApiServices characterApiServices = CharacterApiServices();

  Future<void> initCubitByPage1() async {
    List<CharacterDTO> initCharacters =
        await characterApiServices.getCharactersPerPage(1);

    emit(state.copyWith(characters: initCharacters));
  }

  Future<void> changePage(int page) async {
    emit(state.copyWith(myPage: page));

    List<CharacterDTO> initCharacters =
        await characterApiServices.getCharactersPerPage(page);

    emit(state.copyWith(characters: initCharacters));
  }

  Future<void> getCharacterPerPage() async {
    List<CharacterDTO> initCharacters =
        await characterApiServices.getCharactersPerPage(state.myPage ?? 1);

    emit(state.copyWith(characters: initCharacters));
  }
}
