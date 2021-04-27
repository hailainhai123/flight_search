import 'package:flight_search/air_asia_bar.dart';
import 'package:flight_search/content_card.dart';
import 'package:flight_search/rounded_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Search',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AirAsiaBar(
            height: 210.0,
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 40.0),
              child: Column(
                children: [
                  _buildButtonRow(),
                  Expanded(
                    child: ContentCard(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildButtonRow() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        RoundedButton(text: "ONE WAY"),
        RoundedButton(text: "ROUND"),
        RoundedButton(text: "MULTICITY", selected: true),
      ],
    ),
  );
}
