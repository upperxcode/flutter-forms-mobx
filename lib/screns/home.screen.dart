import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _buttonEnabled = false;

  void _changeEmail(value) {
    print(value);

    _buttonEnabled = EmailValidator.validate(value);
  }

  void _nextStep() {
    print("Botao ativado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: _changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              child: Text(
                "Continuar",
              ),
              onPressed: _buttonEnabled ? _nextStep : null,
            ),
          ],
        ),
      ),
    );
  }
}
