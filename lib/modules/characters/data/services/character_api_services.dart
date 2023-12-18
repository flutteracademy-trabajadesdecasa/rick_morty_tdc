import 'dart:convert';

import 'package:rick_morty_tdc/api.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:http/http.dart' as http;

class CharacterApiServices {
  Future<List<CharacterDTO>> getCharactersPerPage(int page) async {
    List<CharacterDTO> myCharacters = [];

    final queryParameters = {
      'page': page.toString(),
    };
    final Uri myUri = Uri.https(
      APIRICKMORTY.BASE_URL,
      '/api/character',
      queryParameters,
    );

    try {
      final http.Response response = await http.get(myUri);
      print(response);
      if (response.statusCode != 200) {
        print(response.statusCode);
      } else {
        final responseBody = jsonDecode(response.body);

        final myDynamicList = responseBody['results'];
        print(response.body);
        myCharacters = myDynamicList
            .map<CharacterDTO>((character) => CharacterDTO.fromJson(character))
            .toList();
        print(myCharacters);
      }
    } catch (e) {
      print(e);
    }

    return myCharacters;
  }
}
