import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      if (context.mounted) Navigator.pushReplacementNamed(context, "login");
    });

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(child: Icon(Icons.facebook, color: Colors.white, size: 75)),
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     goNext();
//     super.initState();
//   }

//   void goNext() {
//     Future.delayed(Duration(seconds: 2), () {
//       if (context.mounted) Navigator.pushReplacementNamed(context, "main");
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrange,
//       body: Center(child: Icon(Icons.facebook, color: Colors.white, size: 75)),
//     );
//   }
// }
