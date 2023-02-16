// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BeauticianNavDrawer extends StatelessWidget {
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
                  fit: BoxFit.fill,
                  image: AssetImage('assets/navBarImg.jpg')),
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.design_services),
            title: Text('My Services'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.pushReplacementNamed(context, '/b_myservices')  
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Create Service'),
            onTap: () => {Navigator.of(context).pop(),
            Navigator.pushReplacementNamed(context, '/b_addservices')
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Bookings'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushReplacementNamed(context, '/bookings')},
          ),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text('Revenues'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushReplacementNamed(context, '/revenues')},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushReplacementNamed(context, '/b_settings')},
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