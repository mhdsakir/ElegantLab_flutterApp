import 'package:elegantlab_app/beautician_screen/bokking_tabs/acceptedTab.dart';
import 'package:elegantlab_app/beautician_screen/bokking_tabs/completedTab.dart';
import 'package:elegantlab_app/beautician_screen/bokking_tabs/pendingTab.dart';
import 'package:elegantlab_app/beautician_screen/bokking_tabs/rejectedTab.dart';
import 'package:elegantlab_app/nav_bars/b_navbar.dart';
import 'package:flutter/material.dart';

class Bookings extends StatelessWidget {
  const Bookings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          drawer: BeauticianNavDrawer(),
          appBar: AppBar(
            title: const Text('Bookings'),
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 1, 18, 171),
              indicatorWeight: 5,
              tabs: [
              RepeatedTab(label: 'Pending'),
              RepeatedTab(label: 'Accepted'),
              RepeatedTab(label: 'Completed'),
              RepeatedTab(label: 'Rejected'),
      
            ]),
          ),
          body: const TabBarView(children: [
            PendingTabScreen(),
            AcceptedTabScreen(),
            CompletedTabScreen(),
            RejectedTabScreen(),
          ]),
        ),
      ),
    );
  }
}
class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Center(
        child: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}