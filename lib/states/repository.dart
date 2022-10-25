import '../provider/drink_api_provider.dart';
import 'drink_optin.dart';
import 'drink_state.dart';

class Repository {

  final drinkApiProvider = DrinkApi(ref);

  Future<List<DrinkOption>> getDrinkOptions(String search) {
    return drinkApiProvider.getDrinkOptions(search);
  }

  Future<Drink> getDrinkDetails(String id) {
    return drinkApiProvider.getDrinkDetails(id);
  }
}