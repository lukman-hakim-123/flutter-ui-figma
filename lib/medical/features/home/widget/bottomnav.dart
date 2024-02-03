import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarHome extends StatefulWidget {
  const BottomNavBarHome({super.key});

  @override
  State<BottomNavBarHome> createState() => _BottomNavBarHomeState();
}

class _BottomNavBarHomeState extends State<BottomNavBarHome> {
  List<Map<String, dynamic>> menuItems = [
    {"title": "Home", "icon": "assets/medical/icons/Home.svg"},
    {"title": "Calender", "icon": "assets/medical/icons/Calender.svg"},
    {"title": "Message", "icon": "assets/medical/icons/Message.svg"},
    {"title": "Notification", "icon": "assets/medical/icons/Notification.svg"},
  ];

  int _selectedItem = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Color(0xFF7D8BB7),
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        items: menuItems
            .map((item) => BottomNavigationBarItem(
                icon: SvgPicture.asset(item["icon"]),
                label: item["title"],
                activeIcon: Column(children: [
                  SvgPicture.asset(
                    item["icon"],
                    colorFilter:
                        ColorFilter.mode(Color(0xFFB28CFF), BlendMode.srcIn),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SvgPicture.asset("assets/medical/icons/Ellipse_bottombar.svg")
                ])))
            .toList(),
        currentIndex: _selectedItem,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
