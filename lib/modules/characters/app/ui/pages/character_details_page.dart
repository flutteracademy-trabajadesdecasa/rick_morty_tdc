import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_cubit.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_state.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/background_image_details.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/buttons/favourite_button.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/main_information_character.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/status_character_widget.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';
import 'package:rick_morty_tdc/theme/app_fonts.dart';
// NAVEGAR CON ARGUMENTOS
// class CharacterDetailsPageObject {
//   final CharacterDTO? myCharacter;

//   CharacterDetailsPageObject({this.myCharacter});
// }

class CharacterDetailsPage extends StatelessWidget {
  // NAVEGAR CON ARGUMENTOS
  // final CharacterDetailsPageObject characterObject;
  const CharacterDetailsPage({
    Key? key,
    // NAVEGAR CON ARGUMENTOS
    // required this.characterObject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      bloc: locator<CharacterCubit>(),
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.COLOR_BLACK,
            onPressed: () {
              context.pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.COLOR_WHITE,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
          body: Center(
            child: Stack(
              children: [
                const BackgroundImageDetails(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: MainInformationCharacter(
                      selectedCharacter: state.selectedCharacter,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
