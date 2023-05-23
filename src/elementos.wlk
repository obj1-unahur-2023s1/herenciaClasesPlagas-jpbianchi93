class Hogar {
  var property nivelDeMugre
  var property confort
  
  method esBueno() = nivelDeMugre <= confort/2
}

class Huerta {
  var property capacidadDeProduccion
  var property nivelDeProduccion = produccion
  
  method esBueno() = capacidadDeProduccion > nivelDeProduccion.nivel()
}

class Mascota {
  var property nivelDeSalud
  
  method esBueno() = nivelDeSalud > 250
}

object produccion {
  var property nivel
}

class Barrio {
  const property elementos = []
  
  method agregarElemento(unElemento) {elemento.add(unElemento)}
  mehod quitarElemento(unElemento) {elemento.remove(unElemento)}
  
  method cantElementosBuenos() = elemento.count({e=>e.esBueno()})
  method cantElementosNoBuenos() = elemento.count({e=>!e.esBueno()}) 
  method esCopado() = self.elementosBuenos() > self.elementosNoBuenos()
}
