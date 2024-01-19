import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/core/router/app_router.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';
import 'package:rick_morty_tdc/widgets/buttons/nav_button_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "Register Page",
              style: TextStyle(
                color: AppColors.COLOR_BLACK,
              ),
            ),
            SizedBox(
              height: 200,
            ),
            NavButtonWidget(
              onPressed: () {
                context.goNamed(AppRoutes.login.name);
              },
              text: 'IR A LOGIN',
            ),
          ],
        ),
      ),
    );
  }
}
