import 'package:elegantlab_app/widgets/pinkButton.dart';
import 'package:flutter/material.dart';

class RegisterOptionScreen extends StatelessWidget {
  const RegisterOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Register",
              style: TextStyle(
                  color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Column(children: [
              Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,bottom: 8),
              child: PinkButton(label: "Customer Register".toUpperCase(), onPressed: (() {
                Navigator.pushReplacementNamed(context, '/customer_register');
              }), width: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,bottom: 8),
              child: PinkButton(label: "Beautician Register".toUpperCase(), onPressed: (() {
                Navigator.pushReplacementNamed(context, '/beautician_register');
              }), width: 20),
            ),
            TextButton(onPressed: (() {
              Navigator.pushReplacementNamed(context, '/login');
            }), child: const Text("Login",style: TextStyle(
                  color: Colors.pink,fontSize: 15),))
            ],)
            
    
          ],
        ),
      ),
    );
  }
}
