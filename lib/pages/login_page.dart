// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utilities/routs.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image.asset("assets/images/login_image.png"),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Enter Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Enter Password"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: (() async {
                  setState(() {
                    changebutton = true;
                  });
                  await Future.delayed(
                    Duration(seconds: 1),
                  );
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, MyRoutes.homeroute);
                }),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: 348,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple,
                  ),
                  child: changebutton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
              // ElevatedButton(
              //   style: TextButton.styleFrom(
              //     minimumSize: Size(348, 50),
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeroute);
              //   },
              //   child: Text(
              //     "Login",
              //     style: TextStyle(fontSize: 16),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
