import 'package:flutter/material.dart';
import 'routes.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return
                MaterialApp(routes: {"/":(context)=>RegisterPage(),
                  MyRoutes.loginRoute:(context)=>LoginPage(),
                        });

    }
}

