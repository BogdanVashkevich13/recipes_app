import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../Api/repository.dart';
import '../Colors/colors.dart';
import 'drink_details.dart';
import '../Api/drink_option.dart';

class ListDrinks extends StatefulWidget {






























  final String search;
  final String title;

  const ListDrinks({ Key? key,  required this.search,  required this.title}): super(key: key);
  _ListDrinksState createState() => _ListDrinksState();
}

class _ListDrinksState extends State<ListDrinks> {

  Future<List<DrinkOption>> _getDrinkOptions() async {
    return Repository().getDrinkOptions(widget.search);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: const TextStyle(
            color: ColorsSet.black,
            fontStyle: FontStyle.italic,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: ColorsSet.red,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder<List<DrinkOption>>(
        future: _getDrinkOptions(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator(
              color: ColorsSet.white,
            ));
          }
          return ListView(
            children: snapshot.data!.map((drink) => ListTile(
              // leading: const CircleAvatar(
              // ),
              title: Text(drink.strDrink),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(child: DrinkDetails(id: drink.idDrink, drinkName: drink.strDrink,),
                      type: PageTransitionType.rightToLeft
                  ),
                );
              },
            )) .toList(),
          );
        },
      ),
    );
  }
}