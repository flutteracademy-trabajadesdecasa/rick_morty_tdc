import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_cubit.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';

class FavouriteButton extends StatelessWidget {
  final CharacterDTO character;
  const FavouriteButton({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<CharacterCubit>().toogleFavCharacters(character.id);
      },
      child: Container(
        height: 36,
        width: 36,
        decoration: const BoxDecoration(
          color: AppColors.COLOR_LIGHT_GREY,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.star,
          size: 20,
          color: (character.isFavourite == null)
              ? AppColors.COLOR_WHITE
              : (character.isFavourite!)
                  ? AppColors.COLOR_YELLOW
                  : AppColors.COLOR_WHITE,
        ),
      ),
    );
  }
}
