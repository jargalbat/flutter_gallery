import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyBottomNavigationRoute extends StatefulWidget {
  const FancyBottomNavigationRoute({Key? key}) : super(key: key);

  @override
  _FancyBottomNavigationRouteState createState() => _FancyBottomNavigationRouteState();
}

class _FancyBottomNavigationRouteState extends State<FancyBottomNavigationRoute> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fancy Bottom Navigation"),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
            iconData: Icons.search,
            title: "Search",
            onclick: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondPage())),
          ),
          TabData(iconData: Icons.shopping_cart, title: "Basket")
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: const <Widget>[
      //       Text("Hello"),
      //       Text("World"),
      //     ],
      //   ),
      // ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text("This is the home page"),
            ElevatedButton(
              child: const Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              // color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondPage()));
              },
            ),
            ElevatedButton(
              child: const Text(
                "Change to page 3",
                style: TextStyle(color: Colors.white),
              ),
              // color: Theme.of(context).accentColor,
              onPressed: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState as FancyBottomNavigationState;
                fState.setPage(2);
              },
            )
          ],
        );
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text("This is the search page"),
            ElevatedButton(
              child: const Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              // color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondPage()));
              },
            )
          ],
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text("This is the basket page"),
            ElevatedButton(
              child: const Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              // color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
        );
    }
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Container(),
    );
  }
}
