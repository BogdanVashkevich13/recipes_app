import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:recipes_app/states/repository.dart';
import 'package:recipes_app/states/state_task.dart';

import '../states/drink_option.dart';

final drinkApiProvider = StateNotifierProvider<DrinkApi, Repository>((ref) {
  return DrinkApi(ref);
});

class DrinkApi extends StateNotifier<Drink> {
  DrinkApi() : super(());
  static const baseUrl = 'https://www.thecocktaildb.com/api/json/v1/1/';
  Future<List<DrinkOption>> getDrinkOptions(String search) async {

    String url = '${baseUrl}filter.php?${search}';

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

    String url = '${baseUrl}lookup.php?i=${id}';

    Response response = await get(url);

    if (response.statusCode == 200) {
      final items = json.decode(response.body);
      Drink drinkDetails = Drink.fromJson(items);
      return drinkDetails;
    } else {
      throw Exception('Failed to load internet');
    }

  }