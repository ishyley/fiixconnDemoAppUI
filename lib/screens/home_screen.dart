import 'package:fiixcondemo/screens/user_home_screen.dart';
import 'package:fiixcondemo/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:fiixcondemo/resources/resources.dart' as resources;

class HomeScreen extends StatefulWidget {
  static const routeId = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 2;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Center(
      child: Text(resources.AppStrings.miniapp),
    ),
    const Center(
      child: Text(resources.AppStrings.message),
    ),
    const UserhomeScreen(),
    const Center(
      child: Text(resources.AppStrings.notification),
    ),
    const Center(
      child: Text(resources.AppStrings.profile),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: _navigateBottomBar,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.layers,
                    color: colors.bottomappbarcolor,
                  ),
                  label: resources.AppStrings.miniapp),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                    color: colors.bottomappbarcolor,
                  ),
                  label: resources.AppStrings.message),
              BottomNavigationBarItem(
                  activeIcon: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  icon: Icon(
                    Icons.add,
                    color: colors.bottomappbarcolor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notification_important_outlined,
                    color: colors.bottomappbarcolor,
                  ),
                  label: resources.AppStrings.notification),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box_outlined,
                  color: colors.bottomappbarcolor,
                ),
                label: resources.AppStrings.profile,
              ),
            ]),
      ),
    );
  }
}
