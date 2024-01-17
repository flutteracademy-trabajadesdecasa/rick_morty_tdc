import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_cubit.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_state.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/buttons/favourite_button.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
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
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                Text(
                  // NAVEGAR CON ARGUMENTOS
                  // characterObject.myCharacter?.name ?? 'No tiene nombre',
                  // NAVEGAR CON ESTADOS COMO AIRBNB
                  state.selectedCharacter?.name ?? 'No tiene nombre',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                FavouriteButton(character: state.selectedCharacter!),
              ],
            ),
          ),
        );
      },
    );
  }
}
