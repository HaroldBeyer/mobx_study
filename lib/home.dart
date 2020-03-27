import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_1/body.dart';
import 'package:mobx_1/controller.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Text(controller.isValid
                ? 'Formulário Validado'
                : 'Formulário não validado');
          },
        ),
      ),
      body: BodyWidget(),
    );
  }
}
