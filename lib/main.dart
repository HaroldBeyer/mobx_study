import 'package:flutter/material.dart';
import 'package:mobx_1/controller.dart';
import 'package:mobx_1/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<Controller>(
            create: (_) => Controller(),
            dispose: (_, controler) => controler.dispose(),
          )
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        ));
  }
}
