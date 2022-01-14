import 'package:flutter/material.dart';
import 'package:space_x_app/pages/company_info_page.dart';
import 'package:space_x_app/pages/home_page.dart';
import 'package:space_x_app/pages/past_launches_page.dart';
import 'package:space_x_app/pages/upcoming_launches_pages.dart';
import 'package:space_x_app/pages/vehicles_page.dart';
import 'package:space_x_app/state/theme_state.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _currentTabIndex;
  List<Widget> pages = [
    const HomePage(),
    const VehiclesPage(),
    const UpcomingLaunchesPage(),
    const PastLaunchesPage(),
    const CompanyInfoPage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentTabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = false;
    return Scaffold(
      drawer: Drawer(
        child: Switch(
          value: isDark,
          onChanged: (value) {
            setState(() {
              isDark = value;
            });
          },
        ),
      ),
      body: pages[_currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: (tabIndex) {
          setState(() {
            _currentTabIndex = tabIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Vehicles",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: "Upcoming",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: "Latest",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: "Company",
          ),
        ],
      ),
    );
  }
}
