import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';

class BackgroundImageDetails extends StatelessWidget {
  const BackgroundImageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.COLOR_BLACK_GREY,
          width: double.infinity,
          height: 380,
        ),
        Opacity(
          opacity: 0.6,
          child: Image.asset(
            'assets/images/other-image-rickandmorty.jpeg',
            height: 180,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
