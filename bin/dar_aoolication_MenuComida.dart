import 'dart:io'; 

void main() {
 
  Map<String, double> menu = {
    'Sopa': 20.0,
    'Tacos': 35.0,
    'Sandwich': 25.0,
    'Ceviche': 50.0
  };

  // Bucle infinito para que el programa siga corriendo hasta que el usuario decida salir.
  while (true) {
 
    print('\n--- Menú disponible ---');
    mostrarMenu(menu);

    print('\n¿Qué te gustaría hacer?');
    print('1. Buscar un platillo');
    print('2. Actualizar el precio de un platillo');
    print('3. Salir');

  
    String? opcion = stdin.readLineSync();


    if (opcion == '1') {
    
      print('Ingresa el nombre del platillo que deseas buscar:');
      String? platilloBuscado = stdin.readLineSync();
     
      if (platilloBuscado != null && platilloBuscado.isNotEmpty) {
        buscarPlatillo(menu,
            platilloBuscado); 
      }
    }
   
    else if (opcion == '2') {
     
      print('Ingresa el nombre del platillo que deseas actualizar:');
      String? platilloActualizar = stdin.readLineSync();

     
      if (platilloActualizar != null && platilloActualizar.isNotEmpty) {
      
        print(
            'Ingresa el nuevo precio para el platillo "$platilloActualizar":');
   
        double? nuevoPrecio = double.tryParse(stdin.readLineSync() ?? '');

        
        if (nuevoPrecio != null) {
          actualizarPrecio(menu, platilloActualizar,
              nuevoPrecio); 
        } else {
          print(
              'Precio inválido. Intenta de nuevo.'); 
        }
      }
    }
   
    else if (opcion == '3') {
      print('¡Hasta luego!'); 
      break; 
    }
  
    else {
      print(
          'Opción no válida. Intenta nuevamente.'); 
    }
  }
}


void mostrarMenu(Map<String, double> menu) {
 
  menu.forEach((platillo, precio) {
   
    print('$platillo: \$${precio.toStringAsFixed(2)}');
  });
}


void buscarPlatillo(Map<String, double> menu, String platillo) {
 
  if (menu.containsKey(platillo)) {
   
    print(
        '¡Genial! Encontramos el platillo "$platillo". Precio: \$${menu[platillo]!.toStringAsFixed(2)}');
  } else {
  
    print('Lo sentimos, el platillo "$platillo" no está en nuestro menú.');
  }
}

void actualizarPrecio(
    Map<String, double> menu, String platillo, double nuevoPrecio) {

  if (menu.containsKey(platillo)) {
   
    menu[platillo] = nuevoPrecio;
  
    print(
        'El precio del platillo "$platillo" se ha actualizado a \$${nuevoPrecio.toStringAsFixed(2)}.');
  } else {
    
    print(
        'No se puede actualizar. El platillo "$platillo" no está disponible en el menú.');
  }
}
