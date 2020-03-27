import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_1/controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

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
          title: Text('MOBX TESTE'),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Observer(
                builder: (_) {
                  return _textField(
                      labelText: 'name',
                      onChanged: controller.client.changeName,
                      errorText: controller.validateName);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return _textField(
                      labelText: 'email',
                      onChanged: controller.client.changeEmail,
                      errorText: controller.validateEmail);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return _textField(
                      labelText: 'cpf',
                      onChanged: controller.client.changeCpf,
                      errorText: controller.validateCpf);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return RaisedButton(
                    child: Text("Salvar"),
                    onPressed: controller.isValid ? () {} : null,
                  );
                },
              )
            ],
          ),
        ));
  }
}
