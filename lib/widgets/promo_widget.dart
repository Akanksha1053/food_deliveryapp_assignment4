import 'package:flutter/material.dart';
class PromoWidget extends StatelessWidget {
  const PromoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
              height: 200,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/burger.jpeg',
                      fit: BoxFit.cover))),
        ),
      ],
    );
  }
}