import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Colors/colors.dart';
import '../startScreen/start_screen.dart';

class DrawerWiget extends ConsumerWidget {
  DrawerWiget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Drawer(
      child: Container(
        color: ColorsSet.mint,
        child: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:50,),
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: ListTile(
                  // leading: Image.asset('images/Watch.png'),
                  title: const Text('Productiviti'),
                  onTap: () {},
                ),
              ),
              const SizedBox( height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: ListTile(
                  // leading: Image.asset('images/Folder.png'),
                  title: const Text('Projects'),
                  onTap: () {},
                ),
              ),
              const SizedBox( height: 10,),
              Container(
                padding: EdgeInsets.only(left: 14),
                child: ListTile(
                  // leading: Image.asset('images/Settings.png'),
                  title: Text('Settings'),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 220,),
              Container(
                padding: EdgeInsets.only(left: 14),
                child: ListTile(
                  // leading: Image.asset('images/SingOut.png'),
                  title: const Text('Sing Out'),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => const startScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

