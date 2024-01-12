import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/widgets/buttons/favourite_button.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';

class CardCharacter extends StatelessWidget {
  final CharacterDTO character;
  const CardCharacter({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Card(
        child: Row(
          children: [
            Stack(
              children: [
                Image.network(
                  character.image,
                  width: 154,
                  height: 154,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: FavouriteButton(
                    character: character,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  character.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.COLOR_BLACK),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
