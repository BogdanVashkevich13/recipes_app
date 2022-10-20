import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Colors/colors.dart';
import '../firstScreen/first_screen.dart';

class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  State<startScreen> createState() => _startScreenState();
}
class _startScreenState extends State<startScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () {Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const firstScreen()));}
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorsSet.mint,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              child: Image.asset('images/Ingredients.png', width: 200, height: 300,),
            ),
          ],
        ),
      ),
    );
  }
}