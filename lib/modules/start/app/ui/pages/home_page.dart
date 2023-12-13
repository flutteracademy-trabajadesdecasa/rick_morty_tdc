import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/modules/start/app/ui/widgets/background_image.dart';
import 'package:rick_morty_tdc/modules/start/app/ui/widgets/title_image.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';
import 'package:rick_morty_tdc/theme/app_fonts.dart';
import 'package:rick_morty_tdc/widgets/buttons/nav_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //BACKGROUND IMAGE
                const TitleImage(),

                // INFORMACIÓN DE LA PÁGINA
                Column(
                  children: [
                    Text(
                      "Bienvenido \na Rick and Morty",
                      style: TEXT_THEME_WHITE.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "En esta prueba, evaluaremos su capacidad para construit la aplicación mediante el análisis de código y la reproducción del siquiente diseño",
                      style: TEXT_THEME_WHITE.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                //BOTÓN DE NAVEGACIÓN
                NavButtonWidget(
                  onPressed: () {},
                  text: 'CONTINUAR',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
