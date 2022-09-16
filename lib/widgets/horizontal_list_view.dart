import 'package:flutter/material.dart';
import 'package:foodu_assignment4/constants_data.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)),
      height: 260,
      child: ListView.builder(
        itemCount: scrollImgList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            Material(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                // margin: EdgeInsets.only(left: 8),
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),),
                      height: 150,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: scrollImgList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                       scrollImgNameList[index],
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '1.5 km | ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFA9F18),
                        ),
                        Text(' 4.8 (1.2k)',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '\$6.00 ',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '| ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.delivery_dining,
                          color: Colors.green,
                        ),
                        Text(' \$2.00     ',
                            style: TextStyle(color: Colors.grey)),
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 16,)
          ],
        ),
      ),
    );
  }
}
