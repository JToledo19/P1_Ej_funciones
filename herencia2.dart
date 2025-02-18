import 'dart:io'; // Para la interacción con la consola

// Clase base Cliente
class Cliente {
  // Atributos
  int id_clientes;
  String nombre;
  String apellido;
  String correoElectronico;
  String telefono;
  String fechaNacimiento;
  String direccion;

  // Constructor
  Cliente(this.id_clientes, this.nombre, this.apellido, this.correoElectronico,
      this.telefono, this.fechaNacimiento, this.direccion);

  // Método para capturar datos del cliente desde la consola
  void capturarDatosCliente() {
    print('\nIngrese los datos del cliente:');
    stdout.write('ID Cliente: ');
    id_clientes = int.parse(stdin.readLineSync()!);
    stdout.write('Nombre: ');
    nombre = stdin.readLineSync()!;
    stdout.write('Apellido: ');
    apellido = stdin.readLineSync()!;
    stdout.write('Correo Electrónico: ');
    correoElectronico = stdin.readLineSync()!;
    stdout.write('Teléfono: ');
    telefono = stdin.readLineSync()!;
    stdout.write('Fecha de Nacimiento (dd/mm/aaaa): ');
    fechaNacimiento = stdin.readLineSync()!;
    stdout.write('Dirección: ');
    direccion = stdin.readLineSync()!;
  }

  // Método para mostrar los datos del cliente
  void mostrarDatosCliente() {
    print('\nDatos del Cliente:');
    print('ID Cliente: $id_clientes');
    print('Nombre: $nombre');
    print('Apellido: $apellido');
    print('Correo Electrónico: $correoElectronico');
    print('Teléfono: $telefono');
    print('Fecha de Nacimiento: $fechaNacimiento');
    print('Dirección: $direccion');
  }
}

// Clase base Resenia
class Resenia {
  // Atributos
  int id_resenia;
  int id_producto;
  int id_cliente;
  int calificacion;
  String comentario;
  String fechaResenia;
  String estado;

  // Constructor
  Resenia(this.id_resenia, this.id_producto, this.id_cliente, this.calificacion,
      this.comentario, this.fechaResenia, this.estado);

  // Método para capturar datos de la reseña desde la consola
  void capturarDatosResenia() {
    print('\nIngrese los datos de la reseña:');
    stdout.write('ID Reseña: ');
    id_resenia = int.parse(stdin.readLineSync()!);
    stdout.write('ID Producto: ');
    id_producto = int.parse(stdin.readLineSync()!);
    stdout.write('ID Cliente: ');
    id_cliente = int.parse(stdin.readLineSync()!);
    stdout.write('Calificación (1-5): ');
    calificacion = int.parse(stdin.readLineSync()!);
    stdout.write('Comentario: ');
    comentario = stdin.readLineSync()!;
    stdout.write('Fecha de Reseña (dd/mm/aaaa): ');
    fechaResenia = stdin.readLineSync()!;
    stdout.write('Estado (Activo/Inactivo): ');
    estado = stdin.readLineSync()!;
  }

  // Método para mostrar los datos de la reseña
  void mostrarDatosResenia() {
    print('\nDatos de la Reseña:');
    print('ID Reseña: $id_resenia');
    print('ID Producto: $id_producto');
    print('ID Cliente: $id_cliente');
    print('Calificación: $calificacion');
    print('Comentario: $comentario');
    print('Fecha de Reseña: $fechaResenia');
    print('Estado: $estado');
  }
}

// Clase DatosCliente que hereda de Cliente
class DatosCliente extends Cliente {
  // Constructor
  DatosCliente(int id_clientes, String nombre, String apellido,
      String correoElectronico, String telefono, String fechaNacimiento, String direccion)
      : super(id_clientes, nombre, apellido, correoElectronico, telefono, fechaNacimiento, direccion);
}

// Clase DatosResenia que hereda de Resenia
class DatosResenia extends Resenia {
  // Constructor
  DatosResenia(int id_resenia, int id_producto, int id_cliente, int calificacion,
      String comentario, String fechaResenia, String estado)
      : super(id_resenia, id_producto, id_cliente, calificacion, comentario, fechaResenia, estado);
}

void main() {
  // Crear una instancia de DatosCliente
  DatosCliente cliente = DatosCliente(0, '', '', '', '', '', '');

  // Capturar datos del cliente
  cliente.capturarDatosCliente();

  // Mostrar los datos del cliente
  cliente.mostrarDatosCliente();

  // Crear una instancia de DatosResenia
  DatosResenia resenia = DatosResenia(0, 0, 0, 0, '', '', '');

  // Capturar datos de la reseña
  resenia.capturarDatosResenia();

  // Mostrar los datos de la reseña
  resenia.mostrarDatosResenia();
}