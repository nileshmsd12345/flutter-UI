import 'package:dogs_path_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class IndicatorScreen extends StatefulWidget {
  @override
  _IndicatorScreenState createState() => _IndicatorScreenState();
}

class _IndicatorScreenState extends State<IndicatorScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Center(
          child: Image(
        image: AssetImage('assets/loading.gif'),
        height: 150,
        width: 150,
      )),
    );
  }
}
