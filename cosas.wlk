object knightRider{
    method peso() = 500
    method peligrosidad() = 10  
    
}

object bumblebee {
    var estaTransformado = false
    
    method transformarlo(){
        estaTransformado = !estaTransformado
    }
    method estaTransformado() = estaTransformado

    method peligrosidad(){
        if (estaTransformado) {return 15}
         
        else {return 30}
    }  
    method peso() = 800 
}

object paqueteLadrillos {
    var property cantidadLadrillos = 0

    method peso() = cantidadLadrillos *2  
  
    method peligrosidad() = 2 
}



object arenaAGranel {
    var property peso = 0
    method peligrosidad() = 1  
  
}


object bateriaAntiaerea {
    var estaCargada = true

    method cargarBateriaConMisiles() {

        estaCargada = !estaCargada
      
    } 
  method peso() {
      if (estaCargada) {return 300}
         
        else {return 200}
      
  } 
method peligrosidad() {
      if (estaCargada) {return 100}
         
        else {return 0}
    
  
}
    
}


object contenedorPortuario {

    const cosasCargadas = []

    method cargarContenedor(unaCosa) {
        cosasCargadas.add(unaCosa)
      
    } 
    method vaciarContenedor() {
        cosasCargadas.clear()
      
    }
    method peso() = 100 + cosasCargadas.map({c => c.peso()}).sum() 
    method peligrosidad() {
        if  (not cosasCargadas.isEmpty() ){return cosasCargadas.map({ c => c.peligrosidad()}).max()}
        else {return 0}
    } 
}


object residuosRadioactivos {
    var property peso = 0

    method peligrosidad() = 200  
  
}


object embalajeDeSeguridad {

    var esLaCoberturaDe = null

    method envolverUnaCosa(unaCosa) {
        esLaCoberturaDe = unaCosa
      
    } 
  
    method peso() = esLaCoberturaDe.peso()
    method peligrosidad() = esLaCoberturaDe.peligrosidad() / 2  
}