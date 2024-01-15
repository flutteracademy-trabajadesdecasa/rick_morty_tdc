import 'dart:convert';

import 'package:rick_morty_tdc/api.dart';
import 'package:rick_morty_tdc/modules/characters/data/models/character_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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
      final http.Response response = await http.get(
        myUri,
        //En el caso de tener token:
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        //   'auth_token':'myToken'

        // },
      );
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
  //ENVIAR FAVORITOS

  Future<void> setCharactersFavs(
      {required List<CharacterDTO> favCharacters}) async {
    await _setLocalFavs(favCharacters: favCharacters);

    // _setFirebaseFavs(favCharacters: favCharacters);
  }

  //CONSEGUIR FAVORITOS
  Future<List<CharacterDTO>?> getCharctersFavs() async {
    return _getLocalFavs();
  }

  //ENVIAR DATOS DE DB LOCAL
  Future<void> _setLocalFavs(
      {required List<CharacterDTO> favCharacters}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString("favouritesCharacters", jsonEncode(favCharacters));

      //[{}{}{}.....]
    } catch (e) {
      print(e);
    }
  }

  //CONSEGUIR FAVORITOS DE DB LOCAL

  Future<List<CharacterDTO>?> _getLocalFavs() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final response = prefs.getString("favouritesCharacters");

      final List<dynamic> mapResponse = jsonDecode(response!);

      final List<CharacterDTO> listResponse =
          mapResponse.map((e) => CharacterDTO.fromJson(e)).toList();

      return listResponse;
    } catch (e) {
      return null;
    }
  }
}
