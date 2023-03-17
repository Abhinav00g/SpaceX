import 'package:flutter/material.dart';
import 'package:space_x/pages/home.dart';
import 'package:space_x/pages/profile.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int _index = 0;
  List page = [Home(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_index],
      bottomNavigationBar: NavigationBar(
        height: 70,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Home',
          ),
        ],
        onDestinationSelected: (index) {
          _index = index;
          setState(() {});
        },
        selectedIndex: _index,
      ),
    );
  }
}
