import 'package:fiixcondemo/screens/home_screen.dart';
import 'package:fiixcondemo/screens/onboarding_screen.dart';
import 'package:fiixcondemo/screens/login_screen.dart';
import 'package:fiixcondemo/resources/resources.dart' as resources;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      routes: {
        OnboardingScreen.routeId: (context) => const OnboardingScreen(),
        LoginScreen.routeId: (context) => const LoginScreen(),
        HomeScreen.routeId: (context) => const HomeScreen(),
        SplashScreen.routeId: (context) => const SplashScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  static const routeId = '/splashscreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            resources.AppAssets.splashscreen,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
