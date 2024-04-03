import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:guitarapp/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomePage();
  }

  _navigateToHomePage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 124, 233, 204),
      body: Center(
        child: Spin(
          child: const Image(image: AssetImage('assets/images/logo.png')),
        ),
      ),
    );
  }
}
