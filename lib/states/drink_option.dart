class DrinkOption {

  String strDrink;
  String strDrinkThumb;
  String idDrink;

  DrinkOption({
    required this.strDrink,
    required this.strDrinkThumb,
    required this.idDrink,
  });

  factory DrinkOption.fromJson(Map<String, dynamic> json) {
    return DrinkOption(
      strDrink: json['strDrink'],
      strDrinkThumb: json['strDrinkThumb'],
      idDrink: json['idDrink'],
    );
  }
}