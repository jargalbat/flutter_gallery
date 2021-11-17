import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart' as titled_navigation_bar;

class TitledNavigationBarRoute extends StatefulWidget {
  const TitledNavigationBarRoute({Key? key}) : super(key: key);

  @override
  _TitledNavigationBarRouteState createState() => _TitledNavigationBarRouteState();
}

class _TitledNavigationBarRouteState extends State<TitledNavigationBarRoute> {
  final List<titled_navigation_bar.TitledNavigationBarItem> items = [
    titled_navigation_bar.TitledNavigationBarItem(title: const Text('Home'), icon: Icons.home),
    titled_navigation_bar.TitledNavigationBarItem(title: const Text('Search'), icon: Icons.search),
    titled_navigation_bar.TitledNavigationBarItem(title: const Text('Bag'), icon: Icons.card_travel),
    titled_navigation_bar.TitledNavigationBarItem(title: const Text('Orders'), icon: Icons.shopping_cart),
    titled_navigation_bar.TitledNavigationBarItem(title: const Text('Profile'), icon: Icons.person_outline),
  ];

  bool navBarMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Titled Bottom Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text("Reversed mode:"),
            Switch(
              value: navBarMode,
              onChanged: (v) {
                setState(() => navBarMode = v);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: titled_navigation_bar.TitledBottomNavigationBar(
        onTap: (index) => debugPrint("Selected Index: $index"),
        reverse: navBarMode,
        curve: Curves.easeInBack,
        items: items,
        activeColor: Colors.red,
        inactiveColor: Colors.blueGrey,
      ),
    );
  }
}
