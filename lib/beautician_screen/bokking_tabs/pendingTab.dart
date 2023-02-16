import 'package:elegantlab_app/models/bookingModel.dart';
import 'package:flutter/material.dart';

class PendingTabScreen extends StatefulWidget {
  const PendingTabScreen({super.key});

  @override
  State<PendingTabScreen> createState() => _PendingTabScreenState();
}

class _PendingTabScreenState extends State<PendingTabScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return BookingModel();
              });
  }
}