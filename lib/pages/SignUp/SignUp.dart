import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../components/Input.dart';
import '../../components/Button.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff5f5f5),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Input(
                    label: "Nome",
                    marginTop: 50,
                    obscureText: false,
                  ),
                  Input(
                    label: "E-mail",
                    marginTop: 20,
                    obscureText: false,
                  ),
                  Input(
                    label: "Senha",
                    marginTop: 20,
                    obscureText: true,
                  ),
                  SizedBox(height: 50),
                  Button(label: "SignUp"),
                ],
              ),
              height: 500,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 50),
            ),
            color: Color(0xfff5f5f5),
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ],
      ),
    );
  }
}
