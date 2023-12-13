import 'package:flutter/material.dart';

// INTERNOS
import 'package:rick_morty_tdc/theme/app_colors.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_BLACK,
      height: double.infinity,
      width: double.infinity,
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(
          "assets/images/space-image-rickandmorty.png",
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
