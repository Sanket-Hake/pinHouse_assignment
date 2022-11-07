import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pinehouse/Screens/home.dart';

import 'Screens/Second_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // textTheme: GoogleFonts.playfairDisplayTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => firstScreen(),
        '/Second_Screen': (context) => Second_Screen(),
      },
    );
  }
}
