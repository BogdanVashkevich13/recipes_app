import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Pages/alcoholic_page.dart';
import '../Pages/cocktails_page.dart';
import '../Pages/non_alcoholic_page.dart';
import '../Pages/ordinary_drink_page.dart';
import '../firstScreen/first_screen.dart';
import '../startScreen/start_screen.dart';
void main()  {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ToDo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: '/',
        routes: {
          '/':(BuildContext context) => const startScreen(),
          '/firstScreen':(BuildContext context) => const firstScreen(),
          '/alcoholicPage':(BuildContext context) => const alcoholicPage(),
          '/nonAlcoholicPage':(BuildContext context) => const nonAlcoPage(),
          '/ordinaryPage':(BuildContext context) => const ordinaryPage(),
          '/cocktailsPage':(BuildContext context) => const cocktailsPage (),
          //'/randomPage':(BuildContext context) => const alcoholicPage(),
        }
    );
  }
}




