void main() {
  // Crear un Map<int, String> con los 12 meses del año
  Map<int, String> meses = {
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre'
  };

  // Recorrer el Map y mostrar los 12 pares clave-valor
  meses.forEach((numero, nombre) {
    print('Mes $numero: $nombre');
  });

  // Ejemplo de acceso a un valor específico
  int numeroMes = 3;
  print('\nEl mes número $numeroMes es: ${meses[numeroMes]}');
}