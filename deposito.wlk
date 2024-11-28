import bicicletas.*
import accesorios.*

class Deposito{
  const property bicicletas = []

  method bicisRapidas(){
    return bicicletas.filter({bici => bici.velocidadCrucero() > 25})
  }

  method marcas(){
    return bicicletas.map({bici => bici.marcas()}).asSet()
  }

  method esNocturno() {
    return bicicletas.all({bici => bici.tieneLuz()})
  }

  method tieneBiciParaLlevarCarga(unPeso){
    return bicicletas.any({bici => bici.carga() > unPeso})
  }

  method laMarcaDeLaMasRapida(){
    return bicicletas.max({bici => bici.velocidadCrucero()}).marca()
  }

  method biciLarga(){
    return bicicletas.filter({bici => bici.largo() > 170})
  }

  method cargaTotalDeBicisLargas(){
    return self.biciLarga().sum({bici => bici.carga()})
  }

  method cantidadBiciSinAccesorios(){
    return bicicletas.count({bici => bici.sinAccesorios()})
  }

  method esbiciCompanieraDe(otraBici){
    return bicicletas.filter({bici => bici.esbiciCompanieraDe(otraBici)})
  }

  method seHizoLaLuz(){
    
  }
}