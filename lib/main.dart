import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: tryAgianPage(),
    );
  }
}

class tryAgianPage extends StatelessWidget {
  const tryAgianPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Try Again'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.unpublished_outlined,
                      size: 90,
                      color: Colors.blue.shade700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            "UPS... couldn't Sign In",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Your username and password don't match.",
                        ),
                        Text("Please,try agian.")
                      ],
                    ),
                  ),
                ],
              ),
              height: 400,
            ),
            Expanded(
              child: Container(
                width: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const (),
                        ),
                      );*/
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: Text(
                  'TRY AGAIN',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
