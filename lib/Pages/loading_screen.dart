import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Colors/colors.dart';
import 'home_page.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({Key? key}) : super(key: key);

  @override
  State<loadingScreen> createState() => _startScreenState();
}
class _startScreenState extends State<loadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () {Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const HomePage()));}
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
                padding: const EdgeInsets.only(top: 10, right: 10),
                child:
                Positioned(
                  child: Image.asset('images/cocktail.png', height: 110, width: 120,),
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