import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../states/drink_option.dart';
import '../states/repository.dart';

class ListDrinks extends StatefulWidget {
  final String search;
  final String title;
  ListDrinks({required Key key, required this.search, required this.title}): super(key: key);
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
        title: Text('${widget.title}'),
      ),
      body: FutureBuilder<List<DrinkOption>>(
        future: _getDrinkOptions(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
          return ListView(
            children: snapshot.data!.map((drink) => ListTile(
              leading: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(drink.strDrinkThumb),
              ),
              title: Text(drink.strDrink),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: DrinkDetails(id: drink.idDrink, drinkName: drink.strDrink,),
                  ),
                );
              },
            )) .toList(),
          );
        },
      ),
    );
  }
}