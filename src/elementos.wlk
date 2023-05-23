import plagas.*

class Hogar {
  var property nivelDeMugre
  var property confort
  
  method esBueno() = nivelDeMugre <= confort/2
  method recibirAtaque(unaPlaga) {
    nivelDeMugre += unaPlaga.nivelDeDanio()
  }
}

class Huerta {
  var property capacidadDeProduccion
  var property nivelDeProduccion = produccion
  
  method esBueno() = capacidadDeProduccion > nivelDeProduccion.nivel()
  method recibirAtaque(unaPlaga) {
    capacidadDeProduccion = 0.max(capacidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1)
    if(unaPlaga.transmiteEnfermedades())
      capacidadDeProduccion = 0.max(capacidadDeProduccion - 10)
  }
}

class Mascota {
  var property nivelDeSalud
  
  method esBueno() = nivelDeSalud > 250
  method recibirAtaque(unaPlaga) {
    if(unaPlaga.transmiteEnfermedades()) 
      nivelDeSalud = 0.max(nivelDeSalud - unaPlaga.nivelDeDanio())
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
