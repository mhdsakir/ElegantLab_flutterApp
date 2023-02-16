import 'package:elegantlab_app/nav_bars/b_navbar.dart';
import 'package:flutter/material.dart';

class AddServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BeauticianNavDrawer(),
        appBar: AppBar(
          title: const Text('Add Services'),
        ),
        body: Center(
          child: Text('AddServices'),
        ),
      ),
    );
  }
}