import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  final Function(int) onItemTapped;

  const NavigationDrawer({super.key, required this.onItemTapped});

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Custom animation controller for drawer
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500), // Adjust drawer animation speed
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut, // Smooth transition
    );

    // Open the drawer with animation when widget initializes
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(-250 * (1 - _animation.value), 0), // Move the drawer smoothly
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.pinkAccent),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/img_1.png'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Juhi Arya',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Text(
                        'juhi.arya@mobiloitte.com',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                _buildDrawerItem(context, Icons.home, 'Home', 0),
                _buildDrawerItem(context, Icons.settings, 'Settings', null),
                _buildDrawerItem(context, Icons.person, 'Profile', null),
                _buildDrawerItem(context, Icons.more_horiz, 'Options', null),
                _buildDrawerItem(context, Icons.logout, 'Log Out', null),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title, int? index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        if (index != null) {
          widget.onItemTapped(index);
        }
        Navigator.pop(context);
      },
    );
  }
}
