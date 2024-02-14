// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class WorkerJob extends StatelessWidget {
  
  final myTextStyles = TextStyle(
      color: Colors.black,
      fontFamily: "Lato",
      fontWeight: FontWeight.bold,
      fontSize: 14);

  final myTextStyleslow =
      TextStyle(color: Colors.grey, fontFamily: "Lato", fontSize: 08);

  Widget upperPart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("1/2", style: myTextStyleslow,)],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [],
        ),
      )),
    );
  }
}
