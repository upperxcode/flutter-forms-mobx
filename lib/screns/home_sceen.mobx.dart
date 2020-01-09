import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:signin/stores/email_store.dart';

class HomeScreenMobX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailStore = EmailStore();

    void _nextStep() {
      print("Botao ativado");
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: emailStore.changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
              ),
            ),
            Observer(
              builder: (_) => MaterialButton(
                minWidth: double.infinity,
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                child: Text(
                  "Continuar",
                ),
                onPressed: emailStore.buttonEnabled ? _nextStep : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
