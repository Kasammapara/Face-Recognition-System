import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes.dart';
import 'login_page.dart';
import 'config.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // This widget is the root of your application.
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  void registerUser() async {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      var regBody = {
        "username": usernameController.text,
        "phone": phoneController.text,
        "email": emailController.text,
        "password": passwordController.text,
      };

      var response = await http.post(
        Uri.parse(registration),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      print(response);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // appBar: AppBar(
      //   title: Center(child: Text("Login")),
      //   backgroundColor: Colors.orangeAccent ,
      // ),
      //
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          child: Form(
            key: formGlobalKey,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.35,
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                            child: Text(
                              "Enter Your Details To Register!!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.20,
                    // bottom: screenHeight,
                    height: screenHeight,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 30, 10),
                        child: Column(
                          children: [
                            TextFormField(
                                controller: usernameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Username cannot Be Empty";
                                  } else if (value != null &&
                                      value.length < 6) {
                                    return "Username must be greater than 6 characters";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.supervised_user_circle),
                                    hintText: 'Username',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      // fontWeight: FontWeight.bold
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                controller: phoneController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Phone Number cannot Be Empty";
                                  } else if (value != null &&
                                      value.length != 10) {
                                    return "Phone Number must be 10 Numbers";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.phone),
                                    hintText: 'Phone Number',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      // fontWeight: FontWeight.bold
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Email cannot Be Empty";
                                  } else if (value != null &&
                                      value.length < 6) {
                                    return "Email must be greater than 6 characters";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.email),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      // fontWeight: FontWeight.bold
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "PassWord cannot Be Empty";
                                  } else if (value != null &&
                                      value.length < 6) {
                                    return "PassWord must be greater than 6 characters";
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    icon: Icon(Icons.password),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      // fontWeight: FontWeight.bold
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "PassWord cannot Be Empty";
                                  } else if (value != null &&
                                      value.length < 6) {
                                    return "PassWord must be greater than 6 characters";
                                  } else if (value != passwordController.text) {
                                    return 'Not Match';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    icon: Icon(Icons.password),
                                    hintText: 'Confirm Password',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      // fontWeight: FontWeight.bold
                                    ))),
                            SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              height: 60,
                              width: 210,
                              child: ElevatedButton(
                                  // style: ButtonStyle(backgroundColor:),
                                  onPressed: () {
                                    registerUser();
                                    if (formGlobalKey.currentState!
                                        .validate()) {
                                      Navigator.pushNamed(
                                          context, MyRoutes.loginRoute);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      primary: Colors.orangeAccent),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(fontSize: 20),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
