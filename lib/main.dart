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
    return Scaffold(

        body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Positioned(
                      child:
                  Image.asset("lib/assets/img_back.jpg")
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
              child: Container(
                child: Text(
                  "Registration",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 275,
                height: 400,
                child: Column(
                  children: [

                    Expanded(child:
                    TextFormField(

                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        hintStyle:
                        TextStyle(
                          fontSize:20,
                          color: Colors.white

                        ),
                        filled: true,
                        fillColor: Colors.blue,
                        hoverColor: Colors.cyan,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        hintText: 'Username',
                      ),
                    )
                    ),
                    Container(
                      child:
                      Expanded(
                        child:TextFormField(

                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            hintStyle:
                            TextStyle(
                                fontSize:20,
                                color: Colors.white

                            ),
                            filled: true,
                            fillColor: Colors.blue,
                            hoverColor: Colors.cyan,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            hintText: 'Full Name',
                          ),
                        ) ,
                      ),
                    ),
                    Container(
                      child:
                      Expanded(
                        child:TextFormField(

                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            hintStyle:
                            TextStyle(
                                fontSize:20,
                                color: Colors.white

                            ),
                            filled: true,
                            fillColor: Colors.blue,
                            hoverColor: Colors.cyan,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            hintText: 'Email',
                          ),
                        ) ,
                      ),
                    ),Container(
                      child:
                      Expanded(
                        child:TextFormField(

                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            hintStyle:
                            TextStyle(
                                fontSize:20,
                                color: Colors.white

                            ),
                            filled: true,
                            fillColor: Colors.blue,
                            hoverColor: Colors.cyan,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            hintText: 'Phone Number',
                          ),
                        ) ,
                      ),
                    ),
                        Container(

                     child: Row(
                       // mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                           child: Text("Gender",
                             textAlign: TextAlign.left,
                             style: TextStyle(
                               fontSize: 20,

                             ),
                           ),
                         ),
                         OutlinedButton(
                           style: OutlinedButton.styleFrom(
                             backgroundColor: Colors.blue
                           ),
                           onPressed: (){}, child:
                         Text("Male", style: TextStyle(color: Colors.white),),

                         )


                       ],

                     ),
                        )
                    ,
                    Container(
                      child:
                      Expanded(
                        child:TextFormField(

                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            hintStyle:
                            TextStyle(
                                fontSize:20,
                                color: Colors.white

                            ),
                            filled: true,
                            fillColor: Colors.blue,
                            hoverColor: Colors.cyan,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            hintText: 'Password',
                          ),
                        ) ,
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        )







    );
  }
}
