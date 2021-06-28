import 'package:dogs_path_app/screen/login_screen.dart';
import 'package:flutter/material.dart';

class FlashScreen extends StatefulWidget {
  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(
        Duration(seconds: 5),
        ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 170,
                  width: 170,
                  child: Image(
                    image: AssetImage('assets/image.gif'),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Dog's Path",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                "by",
                style: TextStyle(color: Colors.white54),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "VirtouStack Softwares Pvt.Ltd.",
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
