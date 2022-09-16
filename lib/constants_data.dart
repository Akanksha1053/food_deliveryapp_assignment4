import 'package:flutter/material.dart';

List<AssetImage> imgList =  [
 AssetImage('assets/grid_images/hamburger.png'),
 AssetImage('assets/grid_images/pizza_transparent.png'),
 AssetImage('assets/grid_images/hamburger.png'),
 AssetImage('assets/grid_images/hamburger.png'),
 AssetImage('assets/grid_images/pizza_transparent.png'),
 AssetImage('assets/grid_images/hamburger.png'),
 AssetImage('assets/grid_images/hamburger.png'),
 AssetImage('assets/grid_images/pizza_transparent.png'),

];

List<String> nameList = [
 'Hamburger',
 'Pizza',
 'Noodles',
 'Meat',
 'vegetable',
 'Dessert',
 'Drink',
 'Pasta'
];

List<NetworkImage> scrollImgList = [
 const NetworkImage(
     'https://i0.wp.com/fountainavenuekitchen.com/wp-content/uploads/2021/01/mandarin-orange-salad-hp.jpg?fit=1170%2C780&ssl=1'),
 const NetworkImage(
     'https://www.onmanorama.com/content/dam/mm/en/food/features/images/2021/10/17/pizza.jpg.transform/onm-articleimage/image.jpg'),
 const NetworkImage(
     'https://img.freepik.com/free-photo/schezwan-noodles-szechwan-vegetable-hakka-noodles-chow-mein-is-popular-indo-chinese-recipes-served-bowl-plate-with-wooden-chopsticks_466689-74636.jpg?w=2000')
];
List<String> scrollImgNameList = ['Mixed Salad','Pizza','Noodles'];


class ConstantsData {
 bool isSelected;
 String name;
 ConstantsData(this.name,this.isSelected);
 static List<ConstantsData> horzScrollNameList = [
  ConstantsData('   All   ',true),
  ConstantsData('Hamburger',false),
  ConstantsData('Pizza',false),
  ConstantsData('Noodles',false),
  ConstantsData('Meat',false),
  ConstantsData('vegetable',false),
  ConstantsData('Dessert',false),
  ConstantsData('Drink',false),
 ];
}

List<AssetImage> lst =[ AssetImage('assets/grid_images/check_img.png'),
 AssetImage('assets/grid_images/hamburger.png'),
 AssetImage('assets/grid_images/pizza_transparent.png'),
 AssetImage('assets/grid_images/noodles.png'),
 AssetImage('assets/grid_images/meat.jpeg'),
 AssetImage('assets/grid_images/vegetable.jpeg'),
 AssetImage('assets/grid_images/dessert.png'),
 AssetImage('assets/grid_images/beer.jpeg'),
];

