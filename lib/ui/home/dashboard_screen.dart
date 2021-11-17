import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/bottom_navigation_bars/bottom_navy_bar_route.dart';
import 'package:flutter_gallery/ui/bottom_navigation_bars/circular_bottom_navigation_route.dart';
import 'package:flutter_gallery/ui/bottom_navigation_bars/fancy_bottom_navigation_route.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _bottomAppBars(),
      ],
      reverse: false,
    );
  }

  Widget _bottomAppBars() {
    return SliverStickyHeader(
      header: _sliverHeader('Bottom app bars'),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            _sliverItem(
              leading: '1',
              text: 'bottom_navy_bar',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BottomNavyBarRoute())),
            ),
            _sliverItem(
              leading: '2',
              text: 'fancy_bottom_navigation',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FancyBottomNavigationRoute()),
              ),
            ),
            // _sliverItem(
            //   leading: '3',
            //   text: 'circular_bottom_navigation',
            //   onTap: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => const CircularBottomNavigationRoute()),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _sliverHeader(String text) {
    return Container(
      height: 60,
      color: Colors.lightBlue,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _sliverItem({required String leading, required String text, VoidCallback? onTap}) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(leading),
      ),
      title: Text(text),
      onTap: onTap,
    );
  }
}
