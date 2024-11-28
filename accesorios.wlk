import bicicletas.*

class Farolito {
    method peso() = 0.5
    method carga() = 0
    method esLuminoso() = true
}

class Canasto {
    const volumen
    method peso() = volumen * 0.1
    method carga() = volumen * 2
    method esLuminoso() = false
}

class MorralDeBici {
    const largo
    var property tieneOjoDeGato = true // le pongo true por poner algo, pero no lo indica en el enunciado
    method peso() = 1.2
    method carga() = largo * 0.3
    method esLuminoso() = tieneOjoDeGato

}