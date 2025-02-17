import 'dart:io'; // Para usar stdin.readLineSync()

// primera Clase Producto
class Producto {
  int id;
  String nombre;
  String marca;
  String tipo;
  double volumen;
  double precio;
  String notasOlfativas;

  Producto({
    required this.id,
    required this.nombre,
    required this.marca,
    required this.tipo,
    required this.volumen,
    required this.precio,
    required this.notasOlfativas,
  });

  void captura() {
    print("\n=== Captura de datos del producto ===");
    print("Ingrese el ID del producto:");
    id = int.parse(stdin.readLineSync()!);
    print("Ingrese el nombre del producto:");
    nombre = stdin.readLineSync()!;
    print("Ingrese la marca del producto:");
    marca = stdin.readLineSync()!;
    print("Ingrese el tipo de producto:");
    tipo = stdin.readLineSync()!;
    print("Ingrese el volumen (en ml):");
    volumen = double.parse(stdin.readLineSync()!);
    print("Ingrese el precio del producto:");
    precio = double.parse(stdin.readLineSync()!);
    print("Ingrese las notas olfativas:");
    notasOlfativas = stdin.readLineSync()!;
    print("Datos del producto capturados exitosamente.\n");
  }

  void mostrarDatos() {
    print("\n=== Detalles del producto ===");
    print("ID: $id");
    print("Nombre: $nombre");
    print("Marca: $marca");
    print("Tipo: $tipo");
    print("Volumen: ${volumen}ml");
    print("Precio: \$${precio.toStringAsFixed(2)}");
    print("Notas olfativas: $notasOlfativas");
    print("=============================\n");
  }
}

// segunda Clase Cliente
class Cliente {
  int idCliente;
  String nombre;
  String apellido;
  String correoElectronico;
  String telefono;
  String fechaNacimiento;
  String direccion;

  Cliente({
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.correoElectronico,
    required this.telefono,
    required this.fechaNacimiento,
    required this.direccion,
  });

  void captura() {
    print("\n=== Captura de datos del cliente ===");
    print("Ingrese el ID del cliente:");
    idCliente = int.parse(stdin.readLineSync()!);
    print("Ingrese el nombre del cliente:");
    nombre = stdin.readLineSync()!;
    print("Ingrese el apellido del cliente:");
    apellido = stdin.readLineSync()!;
    print("Ingrese el correo electrónico del cliente:");
    correoElectronico = stdin.readLineSync()!;
    print("Ingrese el teléfono del cliente:");
    telefono = stdin.readLineSync()!;
    print("Ingrese la fecha de nacimiento del cliente (DD/MM/AAAA):");
    fechaNacimiento = stdin.readLineSync()!;
    print("Ingrese la dirección del cliente:");
    direccion = stdin.readLineSync()!;
    print("Datos del cliente capturados exitosamente.\n");
  }

  void mostrarDatos() {
    print("\n=== Detalles del cliente ===");
    print("ID: $idCliente");
    print("Nombre: $nombre");
    print("Apellido: $apellido");
    print("Correo electrónico: $correoElectronico");
    print("Teléfono: $telefono");
    print("Fecha de nacimiento: $fechaNacimiento");
    print("Dirección: $direccion");
    print("=============================\n");
  }
}

// tercer Clase Pedido
class Pedido {
  int idPedido;
  int idCliente;
  String fechaPedido;
  double totalPedido;
  String estadoPedido;
  String metodosPago;
  String direccionEnvio;

  Pedido({
    required this.idPedido,
    required this.idCliente,
    required this.fechaPedido,
    required this.totalPedido,
    required this.estadoPedido,
    required this.metodosPago,
    required this.direccionEnvio,
  });

  void captura() {
    print("\n=== Captura de datos del pedido ===");
    print("Ingrese el ID del pedido:");
    idPedido = int.parse(stdin.readLineSync()!);
    print("Ingrese el ID del cliente:");
    idCliente = int.parse(stdin.readLineSync()!);
    print("Ingrese la fecha del pedido (DD/MM/AAAA):");
    fechaPedido = stdin.readLineSync()!;
    print("Ingrese el total del pedido:");
    totalPedido = double.parse(stdin.readLineSync()!);
    print("Ingrese el estado del pedido:");
    estadoPedido = stdin.readLineSync()!;
    print("Ingrese el método de pago:");
    metodosPago = stdin.readLineSync()!;
    print("Ingrese la dirección de envío:");
    direccionEnvio = stdin.readLineSync()!;
    print("Datos del pedido capturados exitosamente.\n");
  }

  void mostrarDatos() {
    print("\n=== Detalles del pedido ===");
    print("ID del pedido: $idPedido");
    print("ID del cliente: $idCliente");
    print("Fecha del pedido: $fechaPedido");
    print("Total del pedido: \$${totalPedido.toStringAsFixed(2)}");
    print("Estado del pedido: $estadoPedido");
    print("Método de pago: $metodosPago");
    print("Dirección de envío: $direccionEnvio");
    print("=============================\n");
  }
}

void main() {
  // Mensaje de bienvenida
  print("=== Sistema de gestión de perfumería ===");

  // Capturar datos del producto
  print("\n--- Ingrese los datos del producto ---");
  Producto producto = Producto(
    id: 0,
    nombre: "",
    marca: "",
    tipo: "",
    volumen: 0.0,
    precio: 0.0,
    notasOlfativas: "",
  );
  producto.captura();

  // Capturar datos del cliente
  print("\n--- Ingrese los datos del cliente ---");
  Cliente cliente = Cliente(
    idCliente: 0,
    nombre: "",
    apellido: "",
    correoElectronico: "",
    telefono: "",
    fechaNacimiento: "",
    direccion: "",
  );
  cliente.captura();

  // Capturar datos del pedido
  print("\n--- Ingrese los datos del pedido ---");
  Pedido pedido = Pedido(
    idPedido: 0,
    idCliente: 0,
    fechaPedido: "",
    totalPedido: 0.0,
    estadoPedido: "",
    metodosPago: "",
    direccionEnvio: "",
  );
  pedido.captura();

  // Mostrar todos los datos capturados
  print("\n=== Resumen de datos capturados ===");
  producto.mostrarDatos();
  cliente.mostrarDatos();
  pedido.mostrarDatos();
}