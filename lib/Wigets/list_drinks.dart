import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../provider/repository.dart';
import '../states/drink_optin.dart';
import 'drinks_details.dart';
import 'dart:async';

class ListDrinks extends StatefulWidget {
  final String search;
  final String title;
  const ListDrinks({ Key? key,  required this.search,  required this.title}): super(key: key);
  _ListDrinksState createState() => _ListDrinksState();
}

class _ListDrinksState extends State<ListDrinks> {

  Future<List<DrinkOption>> _getDrinkOptions() async {
    return Repository().getDrinkOptions(widget.search);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<DrinkOption>>(
        future: _getDrinkOptions(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          return ListView(
            children: snapshot.data!.map((drink) => ListTile(
              leading: CircleAvatar(
              ),
              title: Text(drink.strDrink),
              onTap: () {},
            )) .toList(),
          );
        },
      ),
    );
  }
}