import 'package:elegantlab_app/nav_bars/c_navbar.dart';
import 'package:flutter/material.dart';

class SearchServices extends StatelessWidget {
  const SearchServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomerNavDrawer(),
        appBar: AppBar(
          title: const Text('Search Services'),
        ),
        body: Center(
          child: Text('Services'),
        ),
      ),
    );
  }
}