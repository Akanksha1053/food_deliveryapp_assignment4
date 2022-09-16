import 'package:flutter/material.dart';
import 'package:foodu_assignment4/widgets/login_option_widget.dart';
class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/login_img.png',scale: 5,),
            const Text('Lets you in',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),

            login_widget(icon: Icons.facebook,text: 'Continue with Facebook'),

            login_widget(icon: Icons.g_mobiledata_outlined,text: 'Continue with Google'),

            login_widget(icon: Icons.apple,text: 'Continue with Apple'),

            Row(
                children: const <Widget>[
                  Expanded(
                      child: Divider(
                        thickness: 1,
                      )
                  ),

                  Text('or'),

                  Expanded(
                      child: Divider(
                        thickness: 1,
                      )
                  ),
                ]
            ),


            GestureDetector(
              child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 70, vertical: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.green),
                  child: const Text(
                    'Sign in with Phone Number',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Don\'t have an account?',style: TextStyle(
                  color: Colors.grey
                ),),
                TextButton(onPressed: (){}, child: const Text('Sign up',style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold
                ),))
              ],
            )
          ]
        ),
      ),

    );
  }
}
