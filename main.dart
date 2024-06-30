import 'dart:io';

import 'controladores/agregar_tarea.dart';
import 'controladores/eliminar_tarea.dart';
import 'controladores/mostrar_tarea.dart';

void main() {
  print('------------------ appTareas ------------------------');
  print('---------- Menu ----------------');
  print('Elije una opcion:');
  print('1. Agregar una tarea');
  print('2. Mostrar una tarea');
  print('3. Elimar una tarea');

  final entrada = stdin;
  final eleccion = entrada.readLineSync();

  switch (eleccion) {
    case '1':
      agregarTarea();
      break;
    case '2':
      mostrarTarea();
      break;
    case '3':
      eliminarTarea();
      break;
    default:
      print('No escogio ninguna de las dos opciones');
  }
}
