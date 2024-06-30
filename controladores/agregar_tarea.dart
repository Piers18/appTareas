import 'dart:io';

import '../modelos/tarea.dart';

void agregarTarea() {
  final entrada = stdin;

  try {
    final archivo = File('./base_datos.txt');

    if (archivo.existsSync()) {
      final contenido = archivo.readAsStringSync();

      print('Ingrese el nombre del archivo: ');
      final ingresandoNombre = entrada.readLineSync() ?? 'No se asigno Nombre';
      print('Ingrese la descripccion:');
      final ingresandoDescripcion = entrada.readLineSync();

      Tarea tarea = Tarea(ingresandoNombre, descripcion: ingresandoDescripcion);

      archivo.writeAsStringSync(contenido + '\n' + tarea.convertirCadena());
    } else {
      print('Archivo inexistente');
    }
  } catch (e) {
    print('Ocurrio un error ${e.toString()}');
  }
}
