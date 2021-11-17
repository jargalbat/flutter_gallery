// import 'package:circular_bottom_navigation/circular_bottom_navigation.dart' as circular_bottom_navigation;
// import 'package:circular_bottom_navigation/tab_item.dart' as tab_item;
import 'package:flutter/material.dart';

class CircularBottomNavigationRoute extends StatefulWidget {
  const CircularBottomNavigationRoute({Key? key}) : super(key: key);

  @override
  _CircularBottomNavigationRouteState createState() => _CircularBottomNavigationRouteState();
}

class _CircularBottomNavigationRouteState extends State<CircularBottomNavigationRoute> {
  // int selectedPos = 0;
  //
  // double bottomNavBarHeight = 60;
  //
  // List<tab_item.TabItem> tabItems = List.of([
  //   tab_item.TabItem(Icons.home, "Home", Colors.blue, labelStyle: const TextStyle(fontWeight: FontWeight.normal)),
  //   tab_item.TabItem(
  //     Icons.search,
  //     "Search",
  //     Colors.orange,
  //     labelStyle: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
  //   ),
  //   tab_item.TabItem(Icons.layers, "Reports", Colors.red),
  //   tab_item.TabItem(Icons.notifications, "Notifications", Colors.cyan),
  // ]);
  //
  // late circular_bottom_navigation.CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    // _navigationController =circular_bottom_navigation. CircularBottomNavigationController(selectedPos);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Padding(
          //   child: bodyContainer(),
          //   padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          // ),
          // Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  // Widget bodyContainer() {
  //   Color selectedColor = tabItems[selectedPos].circleColor;
  //   String slogan = '';
  //   switch (selectedPos) {
  //     case 0:
  //       slogan = "Family, Happiness, Food";
  //       break;
  //     case 1:
  //       slogan = "Find, Check, Use";
  //       break;
  //     case 2:
  //       slogan = "Receive, Review, Rip";
  //       break;
  //     case 3:
  //       slogan = "Noise, Panic, Ignore";
  //       break;
  //   }
  //
  //   return GestureDetector(
  //     child: Container(
  //       width: double.infinity,
  //       height: double.infinity,
  //       color: selectedColor,
  //       child: Center(
  //         child: Text(
  //           slogan,
  //           style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
  //         ),
  //       ),
  //     ),
  //     onTap: () {
  //       if (_navigationController.value == tabItems.length - 1) {
  //         _navigationController.value = 0;
  //       } else {
  //         _navigationController.value++;
  //       }
  //     },
  //   );
  // }
  //
  // Widget bottomNav() {
  //   return circular_bottom_navigation.CircularBottomNavigation(
  //     tabItems,
  //     controller: _navigationController,
  //     barHeight: bottomNavBarHeight,
  //     barBackgroundColor: Colors.white,
  //     animationDuration: const Duration(milliseconds: 300),
  //     selectedCallback: (int selectedPos) {
  //       setState(() {
  //         this.selectedPos = selectedPos;
  //         debugPrint(_navigationController.value.toString());
  //       });
  //     },
  //   );
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   _navigationController.dispose();
  // }
}
