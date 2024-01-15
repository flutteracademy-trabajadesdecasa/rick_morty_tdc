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

    List<CharacterDTO>? myFavsCharacters =
        await characterApiServices.getCharctersFavs();

    List<CharacterDTO> result = initCharacters.map((character) {
      return myFavsCharacters!.firstWhere(
        (favCharacter) => favCharacter.id == character.id,
        orElse: () => character,
      );
    }).toList();

    print(initCharacters);
    print(myFavsCharacters);
    print(result);

    emit(state.copyWith(
      characters: result,
      charactersFavs: myFavsCharacters ?? [],
    ));
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

  Future<void> toogleFavCharacters(int idElement) async {
    final myCharacters = state.characters;

    List<CharacterDTO> newCharacters = myCharacters.map((element) {
      if (element.id == idElement) {
        print(element.isFavourite);
        element.isFavourite ??= false;
        print(element.isFavourite);
        final myCharacterElement = CharacterDTO(
          id: element.id,
          name: element.name,
          status: element.status,
          species: element.species,
          type: element.type,
          gender: element.gender,
          origin: element.origin,
          location: element.location,
          image: element.image,
          episode: element.episode,
          url: element.url,
          created: element.created,
          isFavourite: !element.isFavourite!,
          hePresionadoElFav: DateTime.now(),
        );
        print(myCharacterElement);
        return myCharacterElement;
      }
      return element;
    }).toList();
    emit(
      state.copyWith(
        characters: newCharacters,
        charactersFavs: newCharacters
            .where((element) => element.isFavourite == true)
            .toList(),
      ),
    );
    await characterApiServices.setCharactersFavs(
      favCharacters: newCharacters
          .where((element) => element.isFavourite == true)
          .toList(),
    );
  }

  void changeFilter(FiltersCharacters myFilter) {
    emit(state.copyWith(filters: myFilter));
  }
}
