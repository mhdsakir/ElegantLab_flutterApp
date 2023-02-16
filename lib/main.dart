import 'package:elegantlab_app/beautician_screen/addServices.dart';
import 'package:elegantlab_app/beautician_screen/b_settings.dart';
import 'package:elegantlab_app/beautician_screen/bookings.dart';
import 'package:elegantlab_app/beautician_screen/revenues.dart';
import 'package:elegantlab_app/beautician_screen/services.dart';
import 'package:elegantlab_app/customer_screen/c_orders.dart';
import 'package:elegantlab_app/customer_screen/c_settings.dart';
import 'package:elegantlab_app/customer_screen/c_searchServices.dart';
import 'package:elegantlab_app/nav_bars/b_navbar.dart';
import 'package:elegantlab_app/screens/loginscreen.dart';
import 'package:elegantlab_app/screens/regOption.dart';
import 'package:elegantlab_app/screens/register_beautician.dart';
import 'package:elegantlab_app/screens/register_customer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/login',
      routes: {
        //Auth Routes
        '/login': (context) => const LoginScreen(),
        '/register_option': (context) => const RegisterOptionScreen(),
        '/customer_register': (context) => const CustomerRegisterScreen(),
        '/beautician_register': (context) => const BeauticianRegisterScreen(),

        //Beautician Routes
        '/beauticianNavDrawer': (context) => BeauticianNavDrawer(),
        '/b_myservices': (context) => MyServices(),
        '/b_addservices': (context) => AddServices(),
        '/bookings': (context) => Bookings(),
        '/revenues': (context) => Revenues(),
        '/b_settings': (context) => BeauticianSettings(),

        //Customer Routes
        '/c_searchservices': (context) => SearchServices(),
        '/c_orders': (context) => CustomerOrders(),
        '/c_settings': (context) => CustomerSettings(),
      },
    );
  }
}
