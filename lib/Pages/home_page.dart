import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Buttons/buttons.dart';
import '../Colors/colors.dart';
import '../Wigets/background.dart';
import '../Wigets/list_drinks.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text(
          'Select a category',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: ColorsSet.black,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorsSet.red,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        textDirection: TextDirection.ltr,
        children:<Widget> [
          Container(
            child: const Background(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: const Buttons(),
          ),
        ],
      ),
    );
  }
}