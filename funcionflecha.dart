int multiplicacion(int a, int b){
  return a * b;

}

int flechamultiplicacion(int a, int b) => a * b;
//returnType functionmane(parameters...) => expression;

double division(double a,double b){
  return a / b;
}

double flechadivision (double a, double b) => a / b;
// funcion main
void main(){
  print('Jorge Toledo Mat: 22308051281106');
  print('llamando a la funcion  multiplicacion ');
  print(multiplicacion(10, 5));
  print("llama a la funcion flechamultiplicacion");
  print(flechamultiplicacion(3,5));

   print('llamando a la funcion  division ');
  print(division(10, 3));
  print("llama a la funcion flechadivision");
  print(flechadivision(10,3));
}