import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  print('hr');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String bn = 'click';
  String chn = 'before click';
  int curindex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //base of the screen
        appBar: AppBar(
          title: Text('hi Narmadha'), //appbar with title
        ),
        body: curindex == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // putting two buttons in center
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              shadowColor: Color(100),
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              onPrimary: Colors.amberAccent,
                              primary: Colors.orange),
                          onPressed: () {
                            setState(() {
                              bn = 'hwr';
                              chn = 'after clicked';
                            });
                            const Text('Welcome Narmadha');

                            print('hinarmadha');
                          },
                          child: Text(bn)),
                    ),
                    Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                bn = 'hlo';
                              });

                              print('hinarmadha');
                            },
                            child: Text(bn))),
                  ],
                ),
              )
            : Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset('images/narm.jpg'),
              ),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            //items have list so in square bracket
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home,
                    color: Color.fromARGB(255, 113, 104, 104), size: 24.0)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
            BottomNavigationBarItem(
                label: 'likes',
                icon: Icon(Icons.favorite,
                    color: Color.fromARGB(255, 43, 108, 206), size: 24.0)),
          ],
          currentIndex: curindex, //represents the nav we are at
          onTap: (int index) {
            //chaning the status of current nav page
            setState(() {
              curindex = index;
              print(curindex);
            });
          },
        ),
      ),
    );
  }
}
