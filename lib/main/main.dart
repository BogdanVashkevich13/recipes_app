import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_bloc/Pages/home_page.dart';
import 'package:recipes_bloc/Pages/loading_screen.dart';



void main()  {
  runApp(const MyApp());
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
          '/':(BuildContext context) => const loadingScreen(),
          '/HomePage': (BuildContext context) => const HomePage(),
        }
    );
  }
}



