import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_1/controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MOBX TESTE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.changeName,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.changeSurname,
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return Text('${controller.nomeCompleto}');
              },
            )
          ],
        ),
      ),
    );
  }
}
