// Clase base Animal
class Animal {
  // Atributos
  int id_animal;
  String nombre;
  String raza;

  // Constructor el nombre de la funcion es igual al nombre de la clase perro
  Animal(this.id_animal, this.nombre, this.raza);

  // Método comer
  void comer() {
    print('$nombre está comiendo.');
  } //fin metodo comer
}

// Clase Perro que hereda de Animal
class Perro extends Animal {
  // Constructor
  Perro(int id_animal, String nombre, String raza) : super(id_animal, nombre, raza);

  // Método correr
  void correr() {
    print('$nombre está corriendo.');
  }

  // Método dormir
  void dormir() {
    print('$nombre está durmiendo.');
  } //fim metodo correr
} //fin clase perro

void main() {
    print('Jorge Toledo Mat: 22308051281106 gpo 6-I');

  // Crear una instancia de Perro 
  // nombre del objeto es mi perro
  Perro tobi = Perro(1, 'tobi', 'Pastor Alemán');

  // Acceder a los atributos

  // Llamar a los métodos
  tobi.comer();  // Método heredado de Animal
  tobi.correr(); // Método de Perro
  tobi.dormir(); // Método de Perro
}