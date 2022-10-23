import 'dart:async';
import 'package:recipes_app/states/state_task.dart';
import '../provider/api_provider.dart';
import 'drink_option.dart';

class Repository {

  final drinkApiProvider = DrinkApiProvider();

  Future<List<DrinkOption>> getDrinkOptions(String search){
    return drinkApiProvider.getDrinkOptions(search);
  }

  Future<Drink> getDrinkDetails(String id) {
    return drinkApiProvider.getDrinkDetails(id);
  }
}