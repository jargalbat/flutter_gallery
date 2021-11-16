import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class BottomNavyBarRoute extends StatefulWidget {
  const BottomNavyBarRoute({Key? key}) : super(key: key);

  @override
  _BottomNavyBarRouteState createState() => _BottomNavyBarRouteState();
}

class _BottomNavyBarRouteState extends State<BottomNavyBarRoute> with SingleTickerProviderStateMixin {
  // Bottom navigation bar
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter gallery'),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          _tabController.animateTo(index, duration: const Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(icon: const Icon(Icons.apps), title: const Text('Home'), activeColor: Colors.red),
          BottomNavyBarItem(
            icon: const Icon(Icons.people),
            title: const Text('Users'),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(icon: const Icon(Icons.message), title: const Text('Messages'), activeColor: Colors.pink),
          BottomNavyBarItem(icon: const Icon(Icons.settings), title: const Text('Settings'), activeColor: Colors.blue),
        ],
      ),
    );
  }
}
