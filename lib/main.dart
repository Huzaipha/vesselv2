// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vesselv2/Screens/EnterPhoneNumber.dart';
import 'package:vesselv2/Screens/TypeScreen.dart';
import 'package:vesselv2/Screens/Worker/Jobs.dart';
import 'package:vesselv2/Screens/Worker/WorkerHome.dart';
import 'package:vesselv2/Screens/prac.dart';
import 'package:vesselv2/Screens/splashScreen.dart';
import 'package:vesselv2/Screens/splashTWO.dart';

import 'Screens/Worker/ServiceRequest.dart';
import 'Screens/Worker/WorkerProfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: WorkerProfile(title: '',),
    );
  }
}
