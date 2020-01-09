// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailStore on _EmailStoreBase, Store {
  final _$buttonEnabledAtom = Atom(name: '_EmailStoreBase.buttonEnabled');

  @override
  bool get buttonEnabled {
    _$buttonEnabledAtom.context.enforceReadPolicy(_$buttonEnabledAtom);
    _$buttonEnabledAtom.reportObserved();
    return super.buttonEnabled;
  }

  @override
  set buttonEnabled(bool value) {
    _$buttonEnabledAtom.context.conditionallyRunInAction(() {
      super.buttonEnabled = value;
      _$buttonEnabledAtom.reportChanged();
    }, _$buttonEnabledAtom, name: '${_$buttonEnabledAtom.name}_set');
  }

  final _$_EmailStoreBaseActionController =
      ActionController(name: '_EmailStoreBase');

  @override
  void changeEmail(dynamic value) {
    final _$actionInfo = _$_EmailStoreBaseActionController.startAction();
    try {
      return super.changeEmail(value);
    } finally {
      _$_EmailStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
