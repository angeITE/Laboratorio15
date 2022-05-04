import 'dart:convert';

class Estudiantes {
    Estudiantes({
      required  this.carrera,
      required  this.correo,
      required  this.matricula,
      required  this.nombre,
      required  this.semestre,
      required  this.telefono,
    });

    String carrera;
    String correo;
    String matricula;
    String nombre;
    String semestre;
    String telefono;
    String? id;

    factory Estudiantes.fromJson(String str) => Estudiantes.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Estudiantes.fromMap(Map<String, dynamic> json) => Estudiantes(
        carrera: json["carrera"],
        correo: json["correo"],
        matricula: json["matricula"],
        nombre: json["nombre"],
        semestre: json["semestre"],
        telefono: json["telefono"],
    );

    Map<String, dynamic> toMap() => {
        "carrera": carrera,
        "correo": correo,
        "matricula": matricula,
        "nombre": nombre,
        "semestre": semestre,
        "telefono": telefono,
    };

     Estudiantes copia() => Estudiantes(
        carrera: carrera,
        correo: correo,
        nombre: nombre,
        matricula: matricula,
        semestre: semestre,
        telefono: telefono,
      );
}
