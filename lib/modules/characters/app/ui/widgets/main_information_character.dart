import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/buttons/favourite_button.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/status_character_widget.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:rick_morty_tdc/theme/app_fonts.dart';

class MainInformationCharacter extends StatelessWidget {
  final CharacterDTO? selectedCharacter;
  const MainInformationCharacter({
    Key? key,
    required this.selectedCharacter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 65,
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(selectedCharacter!.image ?? ''),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: FavouriteButton(character: selectedCharacter!),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          // NAVEGAR CON ARGUMENTOS
          // characterObject.myCharacter?.name ?? 'No tiene nombre',
          // NAVEGAR CON ESTADOS COMO AIRBNB
          selectedCharacter?.name ?? 'No tiene nombre',
          style: TEXT_THEME_WHITE.bodyLarge,
        ),
        SizedBox(
          height: 20,
        ),
        StatusCharacterWidget(
          selectedCharacter: selectedCharacter!,
        ),
      ],
    );
  }
}
