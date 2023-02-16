// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomerNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Sakir'),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('assets/navBarImg.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search Services'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.pushReplacementNamed(context, '/c_searchservices')
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('My Orders'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.pushReplacementNamed(context, '/c_orders')
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.pushReplacementNamed(context, '/c_settings')
            },
          ),
          const Divider(
            color: Colors.pink,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.pushReplacementNamed(context, '/login')},
          ),
        ],
      ),
    );
  }
}
