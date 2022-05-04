import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'Estudiantes.dart';

class DataEstudiante extends ChangeNotifier{
  final  url = 'primer-api-rest-default-rtdb.firebaseio.com';
  final List<Estudiantes> estudiante = [];

  DataEstudiante(){
      fetchEstudiante();
    }

  Future <List<Estudiantes>>fetchEstudiante() async {
    final link = Uri.https(url, 'Estudiantes.json');
    final response = await http.get(link);

    final Map<String, dynamic> mapa = json.decode(response.body);
    mapa.forEach((key, value) { 
      final temp  = Estudiantes.fromMap(value);
      temp.id = key;
      estudiante.add(temp);
    });
    notifyListeners();
    return estudiante;
  }
}