import 'proyecto.dart';

class Tarea implements Proyecto {
  // atributos
  String nombre;
  String? descripcion;
  estadoTarea? tarea = estadoTarea.pendiente;

  // contructor
  Tarea(this.nombre,
      {this.descripcion = '', this.tarea = estadoTarea.pendiente});

  // metodos
  String convertirCadena() {
    return '$nombre|$descripcion|$tarea';
  }

  // herecia de una clase abstracta
  @override
  void terminarTarea() {
    tarea = estadoTarea.realizada;
  }
}

enum estadoTarea { realizada, pendiente }
