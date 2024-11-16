void main() {
  // List: operaciones con listas
  print("\n");
  print('--- Operaciones con Listas ---');
  List<String> herramientas = ['Martillo', 'Destornillador', 'Llave inglesa'];
  herramientas.add('Alicates'); // Agregar un elemento
  herramientas.remove('Destornillador'); // Eliminar un elemento por valor
  herramientas.removeAt(0); // Eliminar un elemento por índice
  herramientas.insert(
      1, 'Sierra'); // Insertar un elemento en un índice específico
  herramientas[0] = 'Taladro'; // Modificar un elemento existente
  print('Herramientas: $herramientas');
  print('Primera herramienta: ${herramientas.first}');
  print('Última herramienta: ${herramientas.last}\n');

  // Set: operaciones con conjuntos
  print('--- Operaciones con Conjuntos (Set) ---');
  Set<String> diasSemana = {
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes'
  };
  diasSemana.add('Sábado'); // Agregar un elemento
  diasSemana.remove('Martes'); // Eliminar un elemento
  diasSemana.addAll({
    'Domingo',
    'Lunes'
  }); // Agregar múltiples elementos (Lunes no se duplicará)
  print('Días de la semana: $diasSemana');
  print('¿Contiene Domingo?: ${diasSemana.contains('Domingo')}');
  print('Tamaño del conjunto: ${diasSemana.length}\n');

  // Map: operaciones con mapas
  print('--- Operaciones con Mapas ---');
  Map<String, int> planetas = {'Mercurio': 4879, 'Venus': 12104};
  planetas['Tierra'] = 12742; // Agregar un nuevo par clave-valor
  planetas['Venus'] = 12500; // Actualizar un valor existente
  planetas.remove('Mercurio'); // Eliminar un par clave-valor
  planetas.forEach((planeta, diametro) {
    print('El planeta $planeta tiene un diámetro de $diametro km');
  }); // Recorrer e imprimir todos los elementos
  print('Claves: ${planetas.keys}');
  print('Valores: ${planetas.values}');
  print('¿Contiene Tierra?: ${planetas.containsKey('Tierra')}');
}
