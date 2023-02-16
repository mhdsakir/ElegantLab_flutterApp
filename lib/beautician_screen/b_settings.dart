import 'package:elegantlab_app/nav_bars/b_navbar.dart';
import 'package:flutter/material.dart';

class BeauticianSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BeauticianNavDrawer(),
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