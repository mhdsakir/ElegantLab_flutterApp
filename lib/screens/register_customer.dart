import 'package:elegantlab_app/widgets/pinkButton.dart';
import 'package:flutter/material.dart';

class CustomerRegisterScreen extends StatefulWidget {
  const CustomerRegisterScreen({super.key});

  @override
  State<CustomerRegisterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomerRegisterScreen> {
  late String username;
  late String password;
  late String phone;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 193, 108, 135),
          elevation: 0,
          leading: IconButton(onPressed: (() {
            Navigator.pushReplacementNamed(context, '/register_option');
          }), icon: Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Customer Register",
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
                        const EdgeInsets.only(left: 20, right: 20, bottom: 12),
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
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 8),
                    child: TextFormField(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        labelText: "Phone Number",
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.pink, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.deepPurpleAccent, width: 2),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        phone = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50,top: 40),
                    child:
                        PinkButton(label: "Sign Up".toUpperCase(), onPressed: () {
                          Navigator.pushReplacementNamed(context, '/c_searchservices');
                        }, width: 10),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.pushReplacementNamed(context, '/login');
                      }),
                      child: const Text(
                        "Login",
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
