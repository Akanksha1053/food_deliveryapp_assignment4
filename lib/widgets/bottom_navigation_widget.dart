import 'package:flutter/material.dart';
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex, super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: const [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 0.5),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
          items: const [

            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt, size: 30),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined, size: 30),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined, size: 30),
              label: 'E-wallet',
            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.person_outline, size: 30),
              label: 'Profile',

            ),
          ],
          currentIndex: _selectedIndex,
          // onTap: onItemTapped,
        ),
      ),
    );
  }
}
