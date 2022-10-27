import 'package:recipes_app/provider/drink_api_provider.dart';
import 'package:recipes_app/states/drink_optin.dart';
import 'package:recipes_app/states/drink_state.dart';
import 'dart:async';


class Repository {

  final drinkApiProvider = DrinkApi(ref);

  Future<List<DrinkOption>> getDrinkOptions(String search){
    return drinkApiProvider.getDrinkOptions(search);
  }

  Future<Drink> getDrinkDetails(String id) {
    return drinkApiProvider.getDrinkDetails(id);
  }

}