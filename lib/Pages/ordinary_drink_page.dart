import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Colors/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ordinaryPage extends ConsumerWidget {
  const ordinaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Ordinary Drinks',
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
    );
  }
}