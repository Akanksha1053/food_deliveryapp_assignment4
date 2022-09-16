import 'package:flutter/material.dart';
import 'package:foodu_assignment4/screens/home_menu_screen.dart';
class login_widget extends StatelessWidget {
  final IconData icon;
  final String text;
  login_widget({required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeMenu()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(color: Colors.grey,width: 0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children:  <Widget>[
            Icon(icon,size: 35),
            const SizedBox(
                width: 20
            ),
            Text(text,style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}
