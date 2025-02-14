void main() {
    print('Jorge Toledo Mat: 22308051281106');
    print('-----------------------------------------------------------------------');
  // Datos del producto
  Map<String, dynamic> producto = {
    'id_producto': 102,
    'nombre_perfumeria': 'Sauvage',
    'marca': 'Dior',
    'tipo': 'Eau de Parfum',
    'volumen': '100 ml',
    'precio': 120.50,
    'notas_olfativas': ['Bergamota', 'Pimienta', 'Ambroxan'],
  };

  // Datos del cliente
  Map<String, dynamic> cliente = {
    'id_cliente': 201,
    'nombre_cliente': 'María',
    'apellido': 'González',
    'correo_electronico': 'maria.gonzalez@example.com',
    'telefono': '+123456789',
    'fecha_de_nacimiento': '1990-05-15',
    'direccion': 'Calle Falsa 123, Ciudad, País',
  };

  // Datos del pedido
  Map<String, dynamic> pedido = {
    'id_pedido': 301,
    'id_cliente': 201, // Relación con el cliente
    'fecha_del_pedido': '2023-10-25',
    'total_del_pedido': 150.75,
    'estado_del_pedido': 'En proceso',
    'metodo_de_pago': 'Tarjeta de crédito',
    'direccion_de_envio': 'Avenida Principal 456, Ciudad, País',
    'productos': [102], // Relación con el producto (lista de IDs de productos)
  };

  // Estructura que une las tres tablas
  Map<String, dynamic> perfumeria = {
    'productos': [producto],
    'clientes': [cliente],
    'pedidos': [pedido],
  };

  // Mostrar los datos de la perfumería
  print('=== Productos ===');
  perfumeria['productos'].forEach((prod) {
    prod.forEach((key, value) {
      if (value is List) {
        print('$key: ${value.join(", ")}');
      } else {
        print('$key: $value');
      }
    });
    print('---');
  });

  print('\n=== Clientes ===');
  perfumeria['clientes'].forEach((cli) {
    cli.forEach((key, value) {
      print('$key: $value');
    });
    print('---');
  });

  print('\n=== Pedidos ===');
  perfumeria['pedidos'].forEach((ped) {
    ped.forEach((key, value) {
      if (value is List) {
        print('$key: ${value.join(", ")}');
      } else {
        print('$key: $value');
      }
    });
    print('---');
  });
}