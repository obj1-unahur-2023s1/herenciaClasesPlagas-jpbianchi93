class Cucarachas {
  var property poblacion
  var property peso
  
  method nivelDeDanio() = poblacion/2
  method transmitirEnfermedad() = poblacion >= 10 && peso >= 10
}

class Mosquitos {
  var property poblacion
  var property peso
  
  method nivelDeDanio() = poblacion
  method transmitirEnfermedad() = poblacion >= 10 && poblacion % 3 == 0.
}

class Pulgas {
  var property poblacion
  var property peso
  
  method nivelDeDanio() = poblacion*2
  method transmitirEnfermedad() = poblacion >= 10 
}

class Garrapatas {
  var property poblacion
  var property peso
  
  method nivelDeDanio() = poblacion*2
  method transmitirEnfermedad() = poblacion >= 10 
}
