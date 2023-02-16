import 'package:elegantlab_app/widgets/pinkButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                    child: TextFormField(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: "UserName",
                        labelText: "UserName",
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.pink, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.deepPurpleAccent, width: 2),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      onChanged: (value) {
                        username = value;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, ),
                    child: TextFormField(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.pink, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.deepPurpleAccent, width: 2),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      obscureText: true,
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50,top: 40),
                    child:
                        PinkButton(label: "Login".toUpperCase(), onPressed: () {}, width: 10),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.pushReplacementNamed(context, '/register_option');
                      }),
                      child: const Text(
                        "Register",
                        style: TextStyle(color: Colors.pink,fontSize: 15),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
