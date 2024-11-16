import 'dart:io'; // Importamos la librería 'dart:io' para poder interactuar con el usuario a través de la terminal.

void main() {
  // Crear un mapa para el menú de platillos, donde la clave es el nombre del platillo (String) y el valor es el precio (double).
  Map<String, double> menu = {
    'Sopa': 20.0,
    'Tacos': 35.0,
    'Sandwich': 25.0,
    'Ceviche': 50.0
  };

  // Bucle infinito para que el programa siga corriendo hasta que el usuario decida salir.
  while (true) {
    // Mostrar el menú completo de platillos disponibles
    print('\n--- Menú disponible ---');
    mostrarMenu(menu);

    // Presentar las opciones al usuario
    print('\n¿Qué te gustaría hacer?');
    print('1. Buscar un platillo');
    print('2. Actualizar el precio de un platillo');
    print('3. Salir');

    // Capturar la opción elegida por el usuario desde la entrada estándar (teclado).
    String? opcion = stdin.readLineSync();

    // Si el usuario elige la opción 1 (buscar platillo)
    if (opcion == '1') {
      // Pedirle al usuario que ingrese el nombre del platillo que desea buscar
      print('Ingresa el nombre del platillo que deseas buscar:');
      String? platilloBuscado = stdin.readLineSync();
      // Verificar que el nombre del platillo no sea nulo ni vacío
      if (platilloBuscado != null && platilloBuscado.isNotEmpty) {
        buscarPlatillo(menu,
            platilloBuscado); // Llamar a la función para buscar el platillo.
      }
    }
    // Si el usuario elige la opción 2 (actualizar precio)
    else if (opcion == '2') {
      // Pedirle al usuario que ingrese el nombre del platillo que desea actualizar
      print('Ingresa el nombre del platillo que deseas actualizar:');
      String? platilloActualizar = stdin.readLineSync();

      // Verificar que el nombre del platillo no sea nulo ni vacío
      if (platilloActualizar != null && platilloActualizar.isNotEmpty) {
        // Pedirle al usuario que ingrese el nuevo precio para el platillo
        print(
            'Ingresa el nuevo precio para el platillo "$platilloActualizar":');
        // Intentar convertir la entrada a un valor numérico (double)
        double? nuevoPrecio = double.tryParse(stdin.readLineSync() ?? '');

        // Verificar que el precio ingresado sea válido (no nulo)
        if (nuevoPrecio != null) {
          actualizarPrecio(menu, platilloActualizar,
              nuevoPrecio); // Llamar a la función para actualizar el precio.
        } else {
          print(
              'Precio inválido. Intenta de nuevo.'); // Mensaje de error si el precio no es válido.
        }
      }
    }
    // Si el usuario elige la opción 3 (salir)
    else if (opcion == '3') {
      print('¡Hasta luego!'); // Mensaje de despedida
      break; // Salir del bucle y terminar el programa.
    }
    // Si el usuario ingresa una opción inválida
    else {
      print(
          'Opción no válida. Intenta nuevamente.'); // Mensaje de error para opción no válida
    }
  }
}

// Función para mostrar todos los platillos del menú
void mostrarMenu(Map<String, double> menu) {
  // Iteramos sobre el mapa 'menu', que contiene las claves como platillos y los valores como precios
  menu.forEach((platillo, precio) {
    // Imprimimos el nombre del platillo y su precio formateado con dos decimales
    print('$platillo: \$${precio.toStringAsFixed(2)}');
  });
}

// Función para buscar un platillo específico en el menú
void buscarPlatillo(Map<String, double> menu, String platillo) {
  // Si el platillo se encuentra en el menú
  if (menu.containsKey(platillo)) {
    // Imprimimos el nombre del platillo y su precio
    print(
        '¡Genial! Encontramos el platillo "$platillo". Precio: \$${menu[platillo]!.toStringAsFixed(2)}');
  } else {
    // Si el platillo no se encuentra en el menú, mostramos un mensaje
    print('Lo sentimos, el platillo "$platillo" no está en nuestro menú.');
  }
}

// Función para actualizar el precio de un platillo
void actualizarPrecio(
    Map<String, double> menu, String platillo, double nuevoPrecio) {
  // Si el platillo está en el menú
  if (menu.containsKey(platillo)) {
    // Actualizamos el precio del platillo en el mapa
    menu[platillo] = nuevoPrecio;
    // Mostramos un mensaje confirmando que el precio ha sido actualizado
    print(
        'El precio del platillo "$platillo" se ha actualizado a \$${nuevoPrecio.toStringAsFixed(2)}.');
  } else {
    // Si el platillo no está en el menú, mostramos un mensaje de error
    print(
        'No se puede actualizar. El platillo "$platillo" no está disponible en el menú.');
  }
}
