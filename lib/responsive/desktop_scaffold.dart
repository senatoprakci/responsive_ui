import 'package:flutter/material.dart';
import 'package:instagram_ui/constants.dart';
import 'package:instagram_ui/main.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: myAppBar,
        body: Row(
          children: [
            //open drawerß
            myDrawer,

            //rest of body
            Expanded(
              
              child: Column(
                children: [
                  //4 box on the top
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        },
                      ),
                    ),
                  ),

                  //tiles below it
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      },
                    ),
                  ),
                  // Expanded(
                  //     child: Column(
                  //   children: [
                  //     Expanded(
                  //       child: Container(color: Colors.pink),
                  //     ),
                  //   ],
                  // ))
                ],
              ),
            )
          ],
        ));
  }
}
