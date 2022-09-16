import 'package:flutter/material.dart';
import 'package:foodu_assignment4/screens/welcome_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async{
    await Future.delayed(const Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/foodu.png'),
                const Text('Foodu',style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
        ),
    );
  }
}

