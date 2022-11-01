import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Wigets/list_drinks.dart';

class NoAlcoholicButton extends StatelessWidget {
  const NoAlcoholicButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
              child: const ListDrinks(
                key: null, search: 'a=Non_Alcoholic', title: 'No Alcoholic Drinks',),
              type: PageTransitionType.rightToLeft
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Image.asset('images/noalcohol.png',
              width: 150,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text('No Alcohol', style: new TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
          ),
        ],
      ),
    );
  }
}