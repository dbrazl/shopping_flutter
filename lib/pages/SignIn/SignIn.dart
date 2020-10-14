import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import './components/FormSignIn.dart';
import './components/SignInWith.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              FormSignIn(),
              SizedBox(height: 20),
              Text(
                "- OR -",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(height: 20),
              SignInWith(
                icon: FontAwesome.facebook,
                label: "Sign in with Facebook",
              ),
              SignInWith(
                icon: FontAwesome.google,
                label: "Sign in with Google",
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
      ],
    );
  }
}
