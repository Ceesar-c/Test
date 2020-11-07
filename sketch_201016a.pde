/*
Las funciones que llevan como tipo 'void', son funciones dentro de un programa
que no tienen que regresar un tipo de dato en específico, es decir, pueden realizar
operaciones con cualquier tipo de dato, sin la obligación de que esta función regrese
un dato.
*/

/*
La función 'setup', es una función predefinida del IDE Processing, está función
se ejecutara inmediatamente luego de iniciarse cualquier programa, y está a su vez
ejecutara las funciones de nuestro programa, siempre y cuando las hayamos llamado.
*/

/*
Funciones de tipo int, siempre regresaran un dato cuando este sea del mismo tipo de 
la función, es decir, si tengo una función int, debo regresar un numero entero y así
con los otros tipos de variables.
También, estas funciones solo se ejecutaran cuando los hayamos llamado por su nombre,
sino entonces no podra realizar ninguna operación.
*/

int a = 1;
int vidaPersonaje = 100;
boolean hSuma = false;
int[] arreglo = new int[3];
//Tipo de dato, nombre e inicializarlo.
IntList lista;
//fin.
//int userNumber = 0;
//int resultado = 0;

void setup(){
  
  arreglo[0] = 6;
  arreglo[1] = 5;
  arreglo[2] = 1;
  
  lista = new IntList();
  lista.append(5);
  lista.append(15);
  lista.append(10);
  lista.sort();
  
  System.out.println(lista);
  
  /*for(int i = 0; i <= 9; i++){
    for(int j = 0; j <= 9; j++){
      arreglo[0] = i;
      arreglo[1] = j;
      System.out.println(arreglo[0] + " " + arreglo[1]);
    }
  }*/
  
  ordenarArreglo(arreglo);
  println(arreglo);
  System.out.println(sumNumeros(7,2));
  System.out.println(hizoLaSuma());
  System.out.println(factorialNum(5));
  System.out.println(buscarNumero(arreglo,2));
}

void ordenarArreglo(int[] arreglo_){
  for(int k = 0; k < arreglo_.length; k++){
    for(int x = k+1; x < arreglo_.length; x++){
      if(arreglo_[x] < arreglo_[k]){
        int swch = arreglo_[k];
        arreglo_[k] = arreglo_[x];
        arreglo_[x] = swch;
        System.out.println(arreglo_);
      }
    }
  }
}

boolean buscarNumero(int[] _arreglo, int n){
  boolean encontro_numero = false;
  for(int i = 0; i < _arreglo.length; i++){
    /*
    Sí n es igual, es decir el argumento de tipo entero que le paso a la función,
    es igual al valor de una de las posiciones del arreglo, entonces si encontro
    el número que buscaba, sino, este no existe dentro de alguna de las posiciones
    del arreglo.
    */
    if(n == _arreglo[i]){
      encontro_numero = true;
      break;
    }else{
      encontro_numero = false;
    }
  }
  
  return encontro_numero;
}

/*arreglo[0] = 50;
  arreglo[1] = 25;
  arreglo[2] = 12;
  println(arreglo);*
  size(800,600);
  //background(0,0,0);
  /*if(estaMuerto){
    restarVida();
  }else{
    System.out.println("Está vivo ._.XD");
  }*/
/*
Los argumentos o parametros, son variables de una función
que almacenan un tipo de dato en especifico para realizar una determinada
operación.
*/
int sumNumeros(int a, int b){
  int r = a + b;
  hSuma = true;
  return r;
}

int factorialNum(int n){
  if(n != 0){
    return (n * factorialNum(n-1));
  }else{
    return 1;
  }
}

boolean hizoLaSuma(){
  boolean a = true;
  boolean b = false;
  if(hSuma){
    return a;
  }else{
    return b;
  }
}



/*for(int z = 1; z <= userNumber; z++){
  if(userNumber == 0){
    System.out.println("No existe un factorial de 0");
  }else{
    resultado = z * userNumber;
    System.out.println(resultado);
  }
}*/

/*void restarVida(){
  vidaPersonaje = 0;
  System.out.println("La vida del personaje es: "+ vidaPersonaje);
}*/
