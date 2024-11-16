void main() {
  int edad = 18;

  // If: ES MAYOR  DE EDAD
  print('--- If: Mayor de edad ---');
  if (edad >= 18) {
    print('Es mayor de edad.');
  } else {
    print('Es menor de edad.');
  }
  print('');

  // If-Else: VERIFICAR SI ES UN NUMERO NEGATIVO, POSITIVO O CERO
  int numero = -5;
  print('--- If-Else: Verificar signo de un número ---');
  if (numero > 0) {
    print('El número es positivo.');
  } else if (numero < 0) {
    print('El número es negativo.');
  } else {
    print('El número es cero.');
  }
  print('');

  // Switch: DIAS DE LA SEMANA
  int dia = 1;
  print('--- Switch: Día de la semana ---');
  switch (dia) {
    case 1:
      print('Lunes');
      break;
    case 2:
      print('Martes');
      break;
    case 3:
      print('Miércoles');
      break;
    case 4:
      print('Jueves');
      break;
    case 5:
      print('Viernes');
      break;
    default:
      print('Fin de semana o día inválido.');
  }
}
