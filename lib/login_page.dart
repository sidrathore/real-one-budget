import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                ),
                Container(
                  child: Text(
                    'Enter Mobile Number',
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 78, 7), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          '+91',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 150,
                        child: TextField(
                          decoration: InputDecoration(
                            // hintText: 'Enter mobilr number',
                            border: InputBorder.none,
                            hintText: 'Enter moblie Number',
                          ),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/otppage');
                  },
                  child: Container(
                    color: Color.fromARGB(255, 20, 91, 23),
                    width: 200,
                    height: 45,
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 19, color: Color.fromARGB(221, 0, 0, 0)),
                    )),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'Sign up',
                        style:
                            TextStyle(color: Color.fromARGB(255, 239, 18, 2)),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
