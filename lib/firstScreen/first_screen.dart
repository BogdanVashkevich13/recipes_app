import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Colors/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../drawer/drawer.dart';


class firstScreen extends ConsumerWidget  {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorsSet.gray,
      appBar: AppBar(
        backgroundColor: ColorsSet.mint,
      ),
      drawer: DrawerWiget(),
    );
  }
}
