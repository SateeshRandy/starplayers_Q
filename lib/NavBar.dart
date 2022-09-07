import 'package:flutter/material.dart';
import 'package:star_player/login_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Test_123',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 20,
            ),),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/starplayers_icon.png',
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_add_outlined),
            title: const Text('My Profile'),
            onTap: () => null,
          ),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(Icons.play_arrow),
            title: const Text('Free Coins'),
            onTap: () => null,
          ),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Cash Balance'),
            onTap: () => null,
          ),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(Icons.local_offer_outlined),
            title: const Text('My Offer & Coupons'),
            onTap: () => null,
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Invite Friends'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Point System'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.exit_to_app),
         onTap:() => InkWell(
              onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
    ),
    ),
          ),
          ),
        ],
      ),
    );
  }
}
