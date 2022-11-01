import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Wigets/list_drinks.dart';

class OrdinaryButton extends StatelessWidget {
  const OrdinaryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
              child: const ListDrinks(
                key: null, search: 'c=Ordinary_Drink', title: 'Ordinary Drinks',),
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
            child: Image.asset('images/ordinary.png',
              width: 150,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('Ordinary', style: new TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
          ),
        ],
      ),
    );
  }
}