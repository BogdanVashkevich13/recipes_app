import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipes_app/states/drink_state.dart';
import '../Colors/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../Wigets/list_drinks.dart';

class alcoholicPage extends ConsumerWidget {
  const alcoholicPage({Key? key}) : super(key: key);

  void ListDrinks (WidgetRef, list) {
  }

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Alcoholic Drinks',
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
        backgroundColor: ColorsSet.mint,
      ),
      backgroundColor: ColorsSet.gray,
      body:SingleChildScrollView(
        child: Container(
          child: ListTile(
              //leading: ListDrinks(),
          ),
        ),
      ),
    );
  }
}