import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_cubit.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_state.dart';
import 'package:rick_morty_tdc/modules/characters/data/services/character_api_services.dart';
import 'package:rick_morty_tdc/theme/app_colors.dart';

class CharacterHomePage extends StatelessWidget {
  const CharacterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      bloc: locator<CharacterCubit>()..initCubit(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          backgroundColor: AppColors.COLOR_BLACK,
          body: ListView.builder(
            itemCount: state.characters.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Card(
                    child: Container(
                      height: 200,
                      child: Row(
                        children: [
                          Image.network(
                            state.characters[index].image,
                          ),
                          Column(
                            children: [
                              Text(
                                state.characters[index].name,
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
                  ),
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(onPressed: () async {
            await CharacterApiServices().getCharactersPerPage(2);
          }),
        );
      },
    );
  }
}
