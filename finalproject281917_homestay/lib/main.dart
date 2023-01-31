import 'package:finalproject281917_homestay/views/screens/loginscreen.dart';
import 'package:finalproject281917_homestay/views/screens/mainscreen.dart';
import 'package:finalproject281917_homestay/views/screens/profilescreen.dart';
import 'package:finalproject281917_homestay/views/screens/registrationscreen.dart';
import 'package:finalproject281917_homestay/views/shared/mainmenu.dart';
import 'package:flutter/material.dart';
import 'views/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        title: 'Homestay Raya',
        home: const SplashScreen());
  }
}
