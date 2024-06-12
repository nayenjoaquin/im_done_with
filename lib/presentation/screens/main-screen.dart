import 'package:flutter/material.dart';
import 'package:im_done_with/presentation/views/home-view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> buildScreens =[
      const HomeView(),
      const HomeView(),
      const HomeView(),
    ];
  // list of items in the bottom navigation bar

  List<PersistentBottomNavBarItem> navBarItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: (" "),
      iconSize: 30,
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.search),
      title: (" "),
      iconSize: 30,
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: (" "),
      iconSize: 30,
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context,
    backgroundColor: Theme.of(context).colorScheme.background,
    confineInSafeArea: true,
    screens: buildScreens,
    navBarStyle: NavBarStyle.style6,
    items: navBarItems,
    );
  }
}