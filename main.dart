import 'package:bazar/unidad4/consumiendo.dart';
import 'package:bazar/unidad4/dataestudiante.dart';
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget{
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => DataEstudiante())
    ],
    child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Consumiendo(),
      //routes: Pages.route,
    );
  }
}
