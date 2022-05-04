import 'package:bazar/unidad4/informacion.dart';

import 'dataestudiante.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Consumiendo extends StatelessWidget {
  Consumiendo({ Key? key }) : super(key: key);

  //final lista = Provider.of<DataEstudiante>(context);

  @override
  Widget build(BuildContext context) {
    final lista = Provider.of<DataEstudiante>(context);
    
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body:        
      ListView.builder(
        itemCount: lista.estudiante.length,
        itemBuilder: (context, index) { 
          return ListTile( 
            onTap: () { 
              Navigator.push(context, MaterialPageRoute<void>(builder: ( BuildContext context) => Informacion(index, lista)));
            },
            title: Text(lista.estudiante[index].nombre),
          );
        })
      );
  }
}
/*
FutureBuilder<Estudiantes>(
          future: estudiante,
          builder: (context, snapshot){
            if (snapshot.hasData) {
              return Text(snapshot.data!.nombre);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }
        )


        ListView.builder(itemBuilder: (context, index) { 
          return ListTile( 
            onTap: () { 
            },
            title: Text(estudiantes.matricula),
          );
        })

        Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child:         ListView.builder(
          itemCount: lista.estudiante.length,
          itemBuilder: (context, index) { 
            var matricula = lista.estudiante[index].nombre;
            return ListTile( 
              title: Text(matricula),
            );
        })
      )
*/