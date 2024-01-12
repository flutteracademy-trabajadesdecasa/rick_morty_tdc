import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 36,
        width: 36,
        decoration: const BoxDecoration(
          color: AppColors.COLOR_LIGHT_GREY,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.star,
          size: 20,
          color: AppColors.COLOR_WHITE,
        ),
      ),
    );
  }
}
