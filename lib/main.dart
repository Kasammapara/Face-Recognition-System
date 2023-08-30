import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text("Login")),
      //   backgroundColor: Colors.orangeAccent ,
      // ),
    //
      body:
      Padding(
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              // height: screenHeight * 0.45,
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 130, 20, 20),
                      child: Text("Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                      ),
                      ),


                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                      child: Text("Welcome back ! Enter your Details",
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
              top: screenHeight * 0.40,
              // bottom: screenHeight,
               height: screenHeight,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 100, 30, 10),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),

                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold
                          )
                        )
                      ),
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
                              )
                          )
                      ),
                      ElevatedButton(onPressed: (){}, child: Text("Login"
                          ,
                      ))

                    ],

                  ),

                ),


              ),
            )
          ],
        ),
      ),

     );
  }
}
