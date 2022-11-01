import 'dart:convert';
import 'package:http/http.dart';
import 'drink.dart';
import 'drink_option.dart';
import 'dart:async';


class DrinkApiProvider {

  static const baseUrl = 'https://www.thecocktaildb.com/api/json/v1/1/';

  Future<List<DrinkOption>> getDrinkOptions(String search) async {

    var url = Uri.http('https://www.thecocktaildb.com/api/json/v1/1/search.php?${search}');
    Response response = await get(url);

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

  Future<Drink> getDrinkDetails(String id) async {

    var url = Uri.https('https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=${id}');
    Response response = await get(url);

    if (response.statusCode == 200) {
      final items = json.decode(response.body);
      Drink drinkDetails = Drink.fromJson(items);
      return drinkDetails;
    } else {
      throw Exception('Failed to load internet');
    }

  }

  Future<Drink> getDrinkRandom() async {

    var url = Uri.https('https://www.thecocktaildb.com/api/json/v1/1/random.php');
    Response response = await get(url);

    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      Drink drink = Drink.fromJson(item);
      return drink;
    } else {
      throw Exception('Failed to load internet');
    }
  }
}