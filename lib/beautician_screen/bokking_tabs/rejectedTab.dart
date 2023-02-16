import 'package:elegantlab_app/models/bookingModel.dart';
import 'package:flutter/material.dart';

class RejectedTabScreen extends StatefulWidget {
  const RejectedTabScreen({super.key});

  @override
  State<RejectedTabScreen> createState() => _RejectedTabScreenState();
}

class _RejectedTabScreenState extends State<RejectedTabScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return BookingModel();
              });
  }
}