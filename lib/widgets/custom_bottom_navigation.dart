import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_month_rounded), label: 'Calen'),
        BottomNavigationBarItem(icon: Icon(Icons.poll_rounded), label: 'Calen'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp), label: 'Calen'),
      ],
    );
  }
}
