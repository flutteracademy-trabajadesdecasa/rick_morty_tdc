import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_cubit.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_cubit.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_state.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/cards/card_character.dart';
import 'package:rick_morty_tdc/modules/characters/data/services/character_api_services.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';

class CharacterHomePage extends StatelessWidget {
  const CharacterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      bloc: locator<CharacterCubit>()..initCubitByPage1(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          backgroundColor: AppColors.COLOR_BLACK,
          body: (state.filters == FiltersCharacters.inital)
              ? ListView.builder(
                  itemCount: state.characters.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child:
                            CardCharacter(character: state.characters[index]));
                  },
                )
              : (state.filters == FiltersCharacters.favs)
                  ? ListView.builder(
                      itemCount: state.charactersFavs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: CardCharacter(
                                character: state.charactersFavs[index]));
                      },
                    )
                  : Container(),
          floatingActionButton: FloatingActionButton(onPressed: () async {
            // await locator<CharacterCubit>().changePage(3);
            //await locator<CharacterCubit>().getCharacterPerPage();
            // await CharacterApiServices().getCharactersPerPage(2);

            // if (state.filters == FiltersCharacters.inital) {
            //   locator<CharacterCubit>().changeFilter(FiltersCharacters.favs);
            // }

            // if (state.filters == FiltersCharacters.favs) {
            //   locator<CharacterCubit>().changeFilter(FiltersCharacters.inital);
            // }

            locator<StartAppCubit>().signOut();
          }),
        );
      },
    );
  }
}
