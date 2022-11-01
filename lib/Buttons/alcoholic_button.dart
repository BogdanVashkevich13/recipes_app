import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Wigets/list_drinks.dart';

class AlcoholicButton extends StatelessWidget {
  const AlcoholicButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
                child: const ListDrinks(
                  key: null, search: 'a=Alcoholic', title: 'Alcoholic',),
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
              child: Image.asset('images/alcohol.png',
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text('Alcohol', style: new TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}