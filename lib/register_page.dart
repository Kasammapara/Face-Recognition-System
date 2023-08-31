import 'package:flutter/material.dart';
import 'routes.dart';
import 'login_page.dart';



class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    final formGlobalKey = GlobalKey<FormState>();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: formGlobalKey,
      resizeToAvoidBottomInset: true,
      // appBar: AppBar(
      //   title: Center(child: Text("Login")),
      //   backgroundColor: Colors.orangeAccent ,
      // ),
      //
      body: Container(
        height: screenHeight ,
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
                        padding: const EdgeInsets.fromLTRB(20, 90, 20, 20),
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
                top: screenHeight * 0.25,
                // bottom: screenHeight,
                height: screenHeight,
                child: Container(
                  width: screenWidth,
                  height: screenHeight * 0.55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 100, 30, 10),
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.supervised_user_circle),
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold
                                ))),
                        SizedBox(
                          height: 30,
                        )
                        ,
                        TextFormField(
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
                              if(value!.isEmpty) {
                                return "PassWord cannot Be Empty";
                              } else if (value != null && value.length < 6) {
                                return "PassWord must be greater than 6 characters";
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
                                  if (formGlobalKey.currentState!.validate())
                                  Navigator.pushNamed(context, MyRoutes.loginRoute);


                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
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
    );

  }
}