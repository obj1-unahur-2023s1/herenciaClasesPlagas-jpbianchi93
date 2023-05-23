class Plaga {
  var property poblacion
  
  method transmiteEnfermedades() = poblacion >= 10
}

class Cucaracha inherits Plaga {
  var property pesoPromedio
  
  method nivelDeDanio() = poblacion/2
  override method transmiteEnfermedades() = super() && pesoPromedio >= 10
}

class Mosquito inherits Plaga{
  method nivelDeDanio() = poblacion
  override method transmiteEnfermedades() = super() && poblacion % 3 == 0.
}

class Pulga inherits Plaga{
  method nivelDeDanio() = poblacion*2
}

class Garrapatas inherits Pulga{

}
