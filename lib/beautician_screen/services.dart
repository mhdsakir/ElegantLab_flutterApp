import 'package:elegantlab_app/models/serviceTileModel.dart';
import 'package:elegantlab_app/nav_bars/b_navbar.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

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
            body:ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ServiceTileModel(title: 'title', description: 'description');
              })
               ));
  }
}