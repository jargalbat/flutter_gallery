import 'package:flutter/material.dart';
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
        // StickyHeader(index: 1),
        // StickyHeader(index: 2),
        // StickyHeader(index: 3),
        _bottomAppBars(),
        _bottomAppBars(),
        _bottomAppBars(),
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
            Container(color: Colors.red, height: 150.0),
            Container(color: Colors.purple, height: 150.0),
            Container(color: Colors.green, height: 150.0),
          ],
        ),
        // delegate: SliverChildBuilderDelegate(
        //   (context, i) => ListTile(
        //     leading: CircleAvatar(
        //       child: Text('$i'),
        //     ),
        //     title: const Text('List tile'),
        //     onTap: () {
        //
        //     },
        //   ),
        //   childCount: 6,
        // ),
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
}
