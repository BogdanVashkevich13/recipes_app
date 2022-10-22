import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Colors/colors.dart';
import '../firstScreen/first_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

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
            Container(
              child:  Padding(
                padding: const EdgeInsets.only(top: 10, right: 12),
                child:
              Positioned(
                child: Image.asset('images/cocktail 1.png', width: 120, height: 170,),
            ),
            ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 195),
              child: Text(
                  'Cocktails',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: ColorsSet.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}