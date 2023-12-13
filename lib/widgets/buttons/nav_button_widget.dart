import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';

class NavButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const NavButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: AppColors.COLOR_WHITE,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.COLOR_BLUE,
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
