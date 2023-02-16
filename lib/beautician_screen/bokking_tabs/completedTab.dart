import 'package:elegantlab_app/models/bookingModel.dart';
import 'package:flutter/material.dart';

class CompletedTabScreen extends StatefulWidget {
  const CompletedTabScreen({super.key});

  @override
  State<CompletedTabScreen> createState() => _CompletedTabScreenState();
}

class _CompletedTabScreenState extends State<CompletedTabScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return BookingModel();
              });
  }
}