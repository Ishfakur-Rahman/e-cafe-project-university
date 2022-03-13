import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:versity_project_coffee/maha/screens/screens.dart';

class RouteToRegister extends StatelessWidget {
  const RouteToRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme:
          GoogleFonts.josefinSansTextTheme(Theme
              .of(context)
              .textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SignUpScreen(),
        }
    );
  }
}
