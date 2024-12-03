import 'package:tes/pages/splash.dart';
import 'package:tes/pages/register.dart';
import 'package:tes/pages/home.dart';
import 'package:tes/pages/cinema.dart';
import 'package:tes/pages/ticket.dart';
import 'package:tes/pages/myticket.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/cinema': (context) => CinemaPage(), 
        '/ticket': (context) => TicketPage(),
        '/mytickets': (context) => MyTicketPage(),
      },
    );
  }
}
