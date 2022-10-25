import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_app/states/drink_state.dart';

import '../states/drink_optin.dart';

final drinkApiProvider = StateNotifierProvider<DrinkApi, Drink>((ref) {
  return DrinkApi (ref);
});
class DrinkApi extends StateNotifier<Drink> {
  DrinkApi(this.ref) : super (Drink(
    strDrink: '',
    strDrinkThumb: '',
    strInstructions: '',
    idDrink: '',
  ));
  String _apiKey = "1";
  final Ref ref;

  Future<Drink> getDrinkDetails(String id) async {
    var url = Uri.https('https://www.thecocktaildb.com/api/json/v1/1/');
    var response = await get(url);
    if (response.statusCode == 200) {
      final items = json.decode(response.body);
      Drink drinkDetails = Drink.fromJson(items);
      return drinkDetails;
    } else {
      throw Exception('Failed to load internet');
    }
  }

  Future<List<DrinkOption>> getDrinkOptions(String id) async {
    var url = Uri.https('https://www.thecocktaildb.com/api/json/v1/1/');
    var response = await get(url);
    if (response.statusCode == 200) {
      final items = json.decode(response.body)['drinks'];
      List<DrinkOption> listOfUsers = items.map<DrinkOption>((json) {
        return DrinkOption.fromJson(json);
      }).toList();
      return listOfUsers;
    } else {
      throw Exception('Failed to load internet');
    }
  }

}