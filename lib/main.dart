
import 'package:dogs_path_app/screen/flash_screen.dart';
import 'package:dogs_path_app/screen/indicator_screen.dart';
import 'package:dogs_path_app/screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlashScreen();
  }
}
