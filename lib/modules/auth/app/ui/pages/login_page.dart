import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/core/router/app_router.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_cubit.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';
import 'package:rick_morty_tdc/utils/form_validators.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 50,
            top: 50,
            left: 20,
            right: 20,
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    style: const TextStyle(color: AppColors.COLOR_BLACK),
                    keyboardType: TextInputType.emailAddress,
                    validator: FormValidators.isValidEmail,
                    controller: emailController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    style: const TextStyle(color: AppColors.COLOR_BLACK),
                    keyboardType: TextInputType.emailAddress,
                    validator: FormValidators.isValidPassword,
                    controller: passwordController,
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            locator<StartAppCubit>().singIn(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                          }
                        },
                        child: Container(
                          width: 300,
                          child: Text(
                            'Acceder',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      context.goNamed(AppRoutes.register.name);
                    },
                    child: Text(
                      '¿Aún no estás registrad@? Regístrate',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
