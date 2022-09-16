import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:foodu_assignment4/screens/order_for_food.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async{
    await Future.delayed(const Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OrderFood()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/welcom_img.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            bottom: 50,
            left: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                    Center(
                      child: Text('Welcome   to',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text('Foodu! \u{1F44B}',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur\n  adipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua',
                    style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
