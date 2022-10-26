import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/Wigets/list_drinks.dart';
import '../Colors/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class firstScreen extends ConsumerWidget  {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
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
        backgroundColor: ColorsSet.mint,
      ),
      backgroundColor: ColorsSet.gray,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                //color: ColorsSet.mint,
                padding: EdgeInsets.only(left: 25, top: 40, right: 25),
                height: 170, width: 392 ,
                child: Row(
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                            PageTransition(
                                child: const ListDrinks(key: null ,search: '', title: '',),
                                type: PageTransitionType.rightToLeft
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget> [
                            Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Image.asset('images/alcohol.png',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Text('Alcohol',  style: new TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 42),
                    Container(
                      color: Colors.white24,
                      height: 150,
                      width: 150,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/nonAlcoholicPage');
                        },
                        child: Image.asset('images/noalcohol.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 70, top: 5),
                child: Text('Alcoholic',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(width: 115,),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Text('Non Alcoholic',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.white24,
                          width: 150,
                          height: 150,
                          child:OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/ordinaryPage');
                            },
                            child: Image.asset('images/ordinary drink.png'),
                          ),
                        ),
                        SizedBox(width: 42,),
                        Container(
                          color: Colors.white24,
                          height: 150,
                          width: 150,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cocktailsPage');
                            },
                            child: Image.asset('images/cocktails.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 5),
                    child: Text('Ordinary Drink',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 115,),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Cocktails',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 30, left: 25),
          //   child: Column(
          //     children: [
          //       Row(
          //         children: [
          //           Container(
          //             child: Row(
          //               children: [
          //                 Container(
          //                   color: Colors.white24,
          //                   width: 150,
          //                   height: 150,
          //                   child: OutlinedButton(
          //                     onPressed: () {},
          //                     child: Image.asset('images/random.png'),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
                // Row(
                //   children: [
                //     Container(
                //       padding: EdgeInsets.only(left: 45, top: 5),
                //       child: Text('Ramdom',
                //         style: TextStyle(
                //           fontSize: 15,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              //],
            //),
         // ),
        ],
      ),
    );
  }
}

