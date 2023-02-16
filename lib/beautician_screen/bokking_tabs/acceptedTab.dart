import 'package:elegantlab_app/models/bookingModel.dart';
import 'package:flutter/material.dart';

class AcceptedTabScreen extends StatefulWidget {
  const AcceptedTabScreen({super.key});

  @override
  State<AcceptedTabScreen> createState() => _AcceptedTabScreenState();
}

class _AcceptedTabScreenState extends State<AcceptedTabScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return BookingModel();
              });
  }
}