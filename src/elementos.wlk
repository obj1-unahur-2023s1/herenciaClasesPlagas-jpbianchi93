class Hogar {
  var property mugre
  var property confort
  
  method esBueno() = mugre >= confort/2
}

class Huerta {
  var proterty capacidadDeProduccion
  var nivelDeHuertas
  
  method esBueno() = capacidadDeProduccion > nivelDeHuertas
}

class Mascota {
  var property nivelDeSalud
  
  method esBueno() = nivelDeSalud > 250
}

object nivelDeHuertas {
  var property nivelDeReferencia
}

class Barrio {
  const property elementos = []
  
  method elementosBuenos() = elemento.count({e=>e.esBueno()})
  method elementosNoBuenos() = elemento.count({e=>!e.esBueno()}) 
  method esCopado() = self.elementosBuenos() > self.elementosNoBuenos()
}
