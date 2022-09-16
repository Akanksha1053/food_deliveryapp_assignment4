import 'package:flutter/material.dart';
import 'package:foodu_assignment4/constants_data.dart';
class VerticalListView extends StatelessWidget {
  const VerticalListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: scrollImgList.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.white,
          ),
          margin: const EdgeInsets.only(
              top: 8, left: 16, right: 16, bottom: 16),
          // color: Colors.white,
          height: 150,
          child: Material(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).cardColor,
            elevation: 10,
            child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 130,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: scrollImgList[index],
                              height: 116,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Container(
                            width: 200,
                            child: Text(scrollImgNameList[index],
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 200,
                          child: Row(
                            children: const [
                              Text(
                                '1.5 km | ',
                                style:
                                TextStyle(color: Colors.grey),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFFFA9F18),
                              ),
                              Text(' 4.8 (1.2k)',
                                  style: TextStyle(
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 200,
                          child: Row(
                            children: const [
                              Icon(
                                Icons.delivery_dining,
                                color: Colors.green,
                              ),
                              Text(' \$2.00     ',
                                  style: TextStyle(
                                      color: Colors.grey)),
                              SizedBox(
                                width: 90,
                              ),
                              Icon(
                                Icons.favorite_outline,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
