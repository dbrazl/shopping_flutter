import 'package:flutter/material.dart';
import '../components/Welcome.dart';
import '../components/LabelButton.dart';
import '../../../components/Input.dart';
import '../components/ForgetPaswword.dart';
import '../../../components/Button.dart';
import '../../SignUp/SignUp.dart';

class FormSignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    void goToSignUp() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      );
    }

    validateEmail(value) {
      if (value.isEmpty) return "Informe o e-mail.";

      return null;
    }

    validatePassword(value) {
      if (value.isEmpty) return "Informe a senha.";

      return null;
    }

    onEmailSaved(input) => _email = input;

    onPasswordSaved(input) => _password = input;

    void submit() {
      if (_formKey.currentState.validate()) {
        _formKey.currentState.save();

        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Seja bem-vindo $_email"),
          ),
        );
      }
    }

    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Welcome(),
                LabelButton(title: "SignUp", onPress: goToSignUp),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Input(
              label: "E-mail",
              marginTop: 50,
              obscureText: false,
              validator: validateEmail,
              onSaved: onEmailSaved,
            ),
            Input(
              label: "Senha",
              marginTop: 20,
              obscureText: true,
              validator: validatePassword,
              onSaved: onPasswordSaved,
            ),
            ForgetPaswword(),
            Button(
              label: "Sign in",
              onPress: submit,
            ),
          ],
        ),
      ),
      height: 490,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: Colors.black12,
            spreadRadius: 1,
            offset: Offset(1, 2),
          ),
        ],
      ),
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(20),
    );
  }
}
