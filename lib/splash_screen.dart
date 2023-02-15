import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatefulWidget {
 

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    Future.delayed(
      Duration(seconds: 3),
      ()=> Navigator.pushNamed(context, '/loginpage'),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                width: 250,
                height: 180,
                margin: EdgeInsets.only(left: 50),
                child: Image.asset('assets/logo.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'Budget Men Wala',
                  style: TextStyle(
                      color: Color.fromARGB(255, 4, 78, 7), fontSize: 25),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
