import 'package:flutter/material.dart';
import 'package:flutter_application_bn5_swd8_s1/core/components/default_text_field.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        children: [
          DefaultTextField(
            controller: emailController,
            icon: Icons.email,
            label: "Email",
          ),
          DefaultTextField(
            controller: passController,
            icon: Icons.security,
            label: "Password",
            isPassword: true,
          ),          
          ElevatedButton(onPressed: () {}, child: Text("Login")),
        ],
      ),
    );
  }
}
