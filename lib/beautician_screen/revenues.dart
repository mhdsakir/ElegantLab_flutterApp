import 'package:elegantlab_app/nav_bars/b_navbar.dart';
import 'package:flutter/material.dart';

class Revenues extends StatelessWidget {
  const Revenues({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BeauticianNavDrawer(),
        appBar: AppBar(
          title: const Text('Revenues'),
        ),
        body: Center(
          child: Text('Revenues'),
        ),
      ),
    );
  }
}