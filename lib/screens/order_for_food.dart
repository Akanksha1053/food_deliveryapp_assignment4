import 'package:flutter/material.dart';
import 'package:foodu_assignment4/screens/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OrderFood extends StatefulWidget {
  const OrderFood({Key? key}) : super(key: key);

  @override
  State<OrderFood> createState() => _OrderFoodState();
}

class _OrderFoodState extends State<OrderFood> {
  final controller = PageController();
  String buttonText = 'Next';
  static int localIndex =0;
  static final _images = [
    'assets/order_img.png',
    'assets/payment_img.png',
    'assets/delivery_img.png'
  ];
  static final _text = ['Order for Food', 'Easy Payment', 'Fast Delivery'];
  final pages = List.generate(
    3,
    (index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset(_images[index],scale: 1,)),
          Text(
            _text[index],
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'Lorem ipsum dolor sit amet, consectetur\n  adipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua'),
          const SizedBox(
            height: 30,
          ),
        ],
      );
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,

                  itemBuilder: (_, index) {
                    localIndex = index;
                    return pages[index % pages.length];
                  },
                ),
              ),
              Column(
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect:  const ExpandingDotsEffect(
                        spacing:  8.0,
                        radius:  10.0,
                        dotWidth:  10.0,
                        dotHeight:  10.0,
                        strokeWidth:  0.5,
                        dotColor:  Colors.grey,
                        activeDotColor:  Colors.green,
                      paintStyle:  PaintingStyle.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      if(localIndex == 1)
                        {
                          setState(() {
                            buttonText = 'Get Started';
                          });
                        }
                      if(localIndex ==2)
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => LogIn()));
                        }
                      controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);

                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 40),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
