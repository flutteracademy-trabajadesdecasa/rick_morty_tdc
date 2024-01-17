import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';
import 'package:rick_morty_tdc/theme/app_fonts.dart';

class StatusCharacterWidget extends StatelessWidget {
  final CharacterDTO selectedCharacter;
  const StatusCharacterWidget({Key? key, required this.selectedCharacter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selectedCharacter.status == "Alive") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 4,
            backgroundColor: AppColors.COLOR_GREEN,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            selectedCharacter.status,
            style: TEXT_THEME_WHITE.titleMedium,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
