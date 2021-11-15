import 'package:flutter/material.dart';

class AnimatedIconRoute extends StatefulWidget {
  const AnimatedIconRoute({Key? key}) : super(key: key);

  @override
  _AnimatedIconRouteState createState() => _AnimatedIconRouteState();
}

class _AnimatedIconRouteState extends State<AnimatedIconRoute> with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool _forward = true;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated icon'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.add_event,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.arrow_menu,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.close_menu,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.ellipsis_search,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.event_add,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.home_menu,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.list_view,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.menu_arrow,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.menu_home,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.pause_play,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.search_ellipsis,
            progress: _animationController,
          ),
          AnimatedIcon(
            size: 100,
            color: Colors.blue,
            icon: AnimatedIcons.view_list,
            progress: _animationController,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          if (_forward) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }

          _forward = !_forward;
        },
      ),
    );
  }
}
