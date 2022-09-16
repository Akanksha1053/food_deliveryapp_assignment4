import 'package:flutter/material.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 8, left: 24, right: 24,bottom: 8),
            padding: EdgeInsets.all(16),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)),
                // color: const Color(0xFFF5F5F6)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  <Widget>[
                Icon(Icons.search,color: Colors.grey,size: 30,),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: const TextField(decoration: InputDecoration(labelText:'What are you craving?',labelStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
