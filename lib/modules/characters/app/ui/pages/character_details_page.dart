import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';

class CharacterDetailsPageObject {
  final CharacterDTO? myCharacter;

  CharacterDetailsPageObject({this.myCharacter});
}

class CharacterDetailsPage extends StatelessWidget {
  final CharacterDetailsPageObject characterObject;
  const CharacterDetailsPage({
    Key? key,
    required this.characterObject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          characterObject.myCharacter?.name ?? 'No tiene nombre',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
