import 'package:elegantlab_app/nav_bars/b_navbar.dart';
import 'package:flutter/material.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BeauticianNavDrawer(),
        appBar: AppBar(
          title: const Text('My Services'),
        ),
        body: Center(
          child: Text('MyServices'),
        ),
      ),
    );
  }
}