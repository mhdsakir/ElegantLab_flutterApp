import 'package:elegantlab_app/nav_bars/c_navbar.dart';
import 'package:flutter/material.dart';

class CustomerOrders extends StatelessWidget {
  const CustomerOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomerNavDrawer(),
        appBar: AppBar(
          title: const Text('My Orders'),
        ),
        body: Center(
          child: Text('Orders'),
        ),
      ),
    );
  }
}