import 'package:elegantlab_app/nav_bars/c_navbar.dart';
import 'package:flutter/material.dart';

class CustomerSettings extends StatelessWidget {
  const CustomerSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomerNavDrawer(),
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Center(
          child: Text('settings'),
        ),
      ),
    );
  }
}