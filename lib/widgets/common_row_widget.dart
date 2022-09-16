import 'package:flutter/material.dart';
class CommonRowWidget extends StatelessWidget {
  final String text;
  CommonRowWidget(this.text);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0,right: 24,top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          TextButton(
            onPressed: null,
            child: Text(text,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
          ),

          TextButton(
            onPressed: () {  },
            child: const Text('See All',style: TextStyle(
                color: Colors.green,
                fontSize: 20
            ),),
          )
        ],
      ),
    );
  }
}