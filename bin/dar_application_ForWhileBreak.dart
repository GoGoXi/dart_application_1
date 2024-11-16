void main() {
  // --- For: Contando frutas ---
  print('--- For: Contando frutas ---');
  List<String> frutas = ['Manzana', 'Plátano', 'Pera', 'Naranja', 'Uva'];
  for (int i = 0; i < frutas.length; i++) {
    print('Fruta $i: ${frutas[i]}');
  }
  print('');

  // --- While: Llenando una caja de herramientas ---
  print('--- While: Llenando una caja de herramientas ---');
  List<String> herramientas = [];
  int contador = 0;
  while (contador < 3) {
    herramientas.add('Herramienta $contador');
    print('Añadiendo herramienta $contador a la caja.');
    contador++;
  }
  print('Caja de herramientas final: $herramientas\n');

  // --- Do-While: Ejercicio con Do While ---
  print('--- Do-While: Cargando máquina ---');
  int calibracion = 0;
  do {
    print('Cargando % $calibracion completada.');
    calibracion++;
  } while (calibracion < 3);
  print('Máquina cargada con éxito.\n');

  // --- Break: Encontrando un número específico ---
  print('--- Break: Encontrando un número específico ---');
  for (int numero = 1; numero <= 10; numero++) {
    print('Revisando número: $numero');
    if (numero == 7) {
      print('¡Número 7 encontrado! Deteniendo la búsqueda.');
      break;
    }
  }
  print('');
}
