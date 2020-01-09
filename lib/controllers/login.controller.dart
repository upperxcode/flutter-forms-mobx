import 'package:email_validator/email_validator.dart';
import 'package:signin/stores/client.store.dart';
import 'package:mobx/mobx.dart';
part 'login.controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateEmail() == null && validateName() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "Este campo é obrigatorio";
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "E-mail inválido";
    } else if (EmailValidator.validate(client.email) == false) {
      print(EmailValidator.validate(client.email));
      return "E-mail inválido";
    }
    return null;
  }
}
