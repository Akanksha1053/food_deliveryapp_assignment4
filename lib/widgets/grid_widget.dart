import 'package:flutter/material.dart';
import 'package:foodu_assignment4/constants_data.dart';
class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, left: 24, right: 24),
      // width: double.infinity,
      height: 200,
      child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 16,crossAxisSpacing: 16),
          itemCount: 8,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index)=> FittedBox(
            fit: BoxFit.fill,
            // color: Colors.amber,
            child: Column(
              children: [
                Image(image: imgList[index],
                height: 120,
                width: 100,),
                const SizedBox(
                  height: 16,
                ),
                Text(nameList[index],style: const TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,),),
              ],
            ),
          )),
    );
  }
}