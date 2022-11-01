import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/Buttons/random_button.dart';
import 'alcoholic_button.dart';
import 'no_alcoholic_button.dart';
import 'ordinary_drink_button.dart';
import 'cocktail_button.dart';




class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 1000,
      child: Column(
        children: [
          Row(
            children:const <Widget> [
              AlcoholicButton(),
              SizedBox(width: 40,),
              NoAlcoholicButton(),
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            children:const <Widget> [
              CocktailButton(),
              SizedBox(width: 40,),
              OrdinaryButton(),
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            children:const <Widget> [
              RandomButton(),
            ],
          ),
        ],
      ),
    );
  }
}