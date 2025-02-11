import 'dart:io';

// Función para capturar datos de la lista
List<int> capturarDatos() {
  List<int> listaNumeros = [];
  print("Ingrese números enteros (escriba 'fin' para terminar):");

  while (true) {
    String entrada = stdin.readLineSync()!.trim();
    if (entrada.toLowerCase() == 'fin') {
      break; // Termina el bucle si el usuario escribe 'fin'
    }
    try {
      int numero = int.parse(entrada); // Convierte la entrada a entero
      listaNumeros.add(numero); // Agrega el número a la lista
    } catch (e) {
      print("Entrada no válida. Ingrese un número entero o 'fin' para terminar.");
    }
  }

  return listaNumeros;
}

// Función para filtrar números pares
List<int> filtrarPares(List<int> lista) {
  List<int> pares = [];
  for (int numero in lista) {
    if (numero % 2 == 0) { // Verifica si el número es par
      pares.add(numero);
    }
  }
  return pares;
}

// Función para mostrar los elementos de una lista
void mostrarElementos(List<int> lista, String mensaje) {
  print("\n$mensaje:");
  for (int i = 0; i < lista.length; i++) {
    print("${i + 1}. ${lista[i]}");
  }
}

void main() {
  // Captura de datos
  List<int> numeros = capturarDatos();

  // Mostrar la lista original
  mostrarElementos(numeros, "Lista original de números");

  // Filtrar números pares
  List<int> numerosPares = filtrarPares(numeros);

  // Mostrar la lista de números pares
  mostrarElementos(numerosPares, "Lista de números pares");
}