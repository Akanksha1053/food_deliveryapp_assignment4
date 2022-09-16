import 'package:flutter/material.dart';
import 'package:foodu_assignment4/widgets/search_widget.dart';
import 'package:foodu_assignment4/widgets/promo_widget.dart';
import 'package:foodu_assignment4/widgets/grid_widget.dart';
import 'package:foodu_assignment4/widgets/common_row_widget.dart';
import 'package:foodu_assignment4/widgets/bottom_navigation_widget.dart';
import 'package:foodu_assignment4/widgets/vertical_list_view.dart';
import 'package:foodu_assignment4/widgets/horizontal_list_view.dart';
import 'package:foodu_assignment4/widgets/filter_options.dart';
import 'package:foodu_assignment4/widgets/home_app_bar.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
          toolbarHeight: 90,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              HomeAppBar(),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            // color: const Color(0xFFFFFFFF),
            child: Column(
              children: [
                const SearchWidget(),
                CommonRowWidget('Special Offers'),
                const PromoWidget(),
                const GridWidget(),
                CommonRowWidget('Discount Guaranteed! \u{1F44C}'),
                const HorizontalListView(),
                CommonRowWidget('Recommended For You \u{1F60D}'),
                const FilterOptions(),
                const VerticalListView(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigation(selectedIndex: _selectedIndex),
      ),
    );
  }
}
