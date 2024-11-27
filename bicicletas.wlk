import accesorios.*

class Bicicleta{
    const property rodado 
    const property largo
    const property marca  
    const property accesorios = []

    method agregarUnAccesorio(unAccesorio){
        accesorios.add(unAccesorio)
    }
    method altura(){
        return rodado * 2.5 + 15
    }

    method velocidadCrucero(){
        if (largo > 120) {rodado + 6} else {rodado + 2}
    }

    method carga(){
        return accesorios.sum({a => a.carga()})
    }

    method peso(){
        return rodado *0.5 + accesorios.sum({a => a.peso()})
    }

    method tieneLuz(){
        accesorios.any({a => a.esLuminoso()})
    }

    method cantidadAccesoriosLivianos(){
        return accesorios.count({a => a.peso() < 1})
    }

    method sinAccesorios(){
        return accesorios.isEmpty()
    }

    method esCompanieraDe(otraBici){
        return self.marca() == otraBici.marca() and (self.largo() - otraBici.largo() > 10) 
    }
}

