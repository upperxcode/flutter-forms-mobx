import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

part 'email_store.g.dart';

class EmailStore = _EmailStoreBase with _$EmailStore;

abstract class _EmailStoreBase with Store {
  @observable
  bool buttonEnabled = false;

  @action
  void changeEmail(value) {
    print(value);

    buttonEnabled = EmailValidator.validate(value);
  }
}
