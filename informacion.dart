//import 'package:bazar/unidad4/listaestudiantes.dart';
import 'package:bazar/unidad4/dataestudiante.dart';
import 'package:flutter/material.dart';

//final _estudiantes = listaEstudiantes;
// ignore: must_be_immutable
class Informacion extends StatelessWidget {
  int numero;
  // ignore: prefer_final_fields
  DataEstudiante _estudiantes;
  Informacion(this.numero, this._estudiantes, { Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListTile(
          title: Row(children: [ const Text("Matricula: "),Text(_estudiantes.estudiante[numero].matricula)]),
          subtitle: Column(
            children: [
              Container(color: Colors.green,height: 1, width: 300,),
              Row(children: [const Text("Nombre: "),Text(_estudiantes.estudiante[numero].nombre),]),
              Row(children: [const Text("Carrera: "),Text(_estudiantes.estudiante[numero].carrera),]),
              Row(children: [const Text("Semestre: "),Text(_estudiantes.estudiante[numero].semestre),]),
              Row(children: [const Text("Telefono: "),Text(_estudiantes.estudiante[numero].telefono),]),
              Row(children: [const Text("Correo: "),Text(_estudiantes.estudiante[numero].correo),]),
            ],
          ),
        ),
      )
    );
  }
}

/*
Column(
          children: [
            Row(children: [const Text("Matricula: "),Text(_estudiantes[numero].matricula),]),
            Row(children: [const Text("Nombre: "),Text(_estudiantes[numero].nombre),]),
            Row(children: [const Text("Carrera: "),Text(_estudiantes[numero].carrera),]),
            Row(children: [const Text("Semestre: "),Text(_estudiantes[numero].semestre),]),
            Row(children: [const Text("Telefono: "),Text(_estudiantes[numero].telefono),]),
            Row(children: [const Text("Correo: "),Text(_estudiantes[numero].correo),]),
          ],
        )
 */