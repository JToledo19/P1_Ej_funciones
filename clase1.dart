class Persona {
  // Atributos
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Función para saludar
  void saludar() {
  print('Jorge Toledo Mat: 22308051281106');
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }

  // Función para cumplir años
  void cumplirAnios() {
    edad++;
    print('¡Feliz cumpleaños! Ahora tengo $edad años.');
  }
}
void main() {
  print('Jorge Toledo Mat: 22308051281106');
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Jorge Toledo', 17);

  // Acceder a los atributos
  print('Nombre: ${persona1.nombre}'); // Salida: Nombre: Juan
  print('Edad: ${persona1.edad}');     // Salida: Edad: 25

  // Llamar a las funciones
  persona1.saludar(); // Salida: Hola, mi nombre es Juan y tengo 25 años.
  persona1.cumplirAnios(); // Salida: ¡Feliz cumpleaños! Ahora tengo 26 años.

  // Verificar la edad actualizada
  print('Edad después de cumplir años: ${persona1.edad}'); // Salida: Edad después de cumplir años: 26
}