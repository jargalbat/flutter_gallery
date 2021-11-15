import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/animated_icon_route.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter gallery'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const AnimatedIconRoute()));
            },
            child: const Text('Animated icon route'),
          ),

          //   ElevatedButton(onPressed: () {
          // Navigator.pushNamed(context, MaterialPageRoute(builder: (_) =>AnimatedIconRoute() )),),
          // AnimatedIconRout        }, child: const Text('Animated icon'),),
        ],
      ),
    );
  }
}
