import cosas.*

object camion {
const cosasCargadas =[] 
method pesoDelCamion() = 1000 
method pesoTotal() = self.pesoDelCamion()+ cosasCargadas.map({c => c.peso()}).sum() 
method cargarCamion(unaCosa) {
  cosasCargadas.add(unaCosa)
}
method descargarCamion(unaCosa) {
    cosasCargadas.remove(unaCosa)
  
}
method todosLosPesosSonImpares() = cosasCargadas.all({c => c.peso().odd()}) 

method hayAlgoQuePesa(unPeso) = cosasCargadas.any({c => c.peso() == unPeso}) 

method hayAlgoQueTienePeligrosidad(unaPeligrosidad) = cosasCargadas.find({c => c.peligrosidad() == unaPeligrosidad}) 

method cosasQueSuperanPeligrosidad(unaPeligrosidad) = cosasCargadas.filter({c => c.peligrosidad() > unaPeligrosidad})

method cosasQueSuperanLaPeligrosidadDe(unaCosa) = cosasCargadas.filter({c => c.peligrosidad() > unaCosa.peligrosidad()})

method elCamionEstaExcedidoDePeso() = self.pesoTotal() >= 2500 

method elCamionPuedeCircular(nivelPeligrosidad){

return not self.elCamionEstaExcedidoDePeso() and cosasCargadas.all({c => c.peligrosidad() < nivelPeligrosidad})

}

}