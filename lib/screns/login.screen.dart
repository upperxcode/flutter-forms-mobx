import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:signin/controllers/login.controller.dart';

class LoginScreen extends StatelessWidget {
  final controller = LoginController();

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) {
                return _textField(
                  labelText: "Name",
                  onChanged: controller.client.changeName,
                  errorText: controller.validateName,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return _textField(
                  labelText: "E-mail",
                  onChanged: controller.client.changeEmail,
                  errorText: controller.validateEmail,
                );
              },
            ),
            Observer(
              builder: (_) {
                return RaisedButton(
                  onPressed: controller.isValid ? () {} : null,
                  child: Text("Salvar"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
