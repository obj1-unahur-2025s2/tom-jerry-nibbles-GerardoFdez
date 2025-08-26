object tom {
    var ultimoRatonComido  = null
    var metrosRecorridos = 0
    var energia = 50
    
    method energia() = energia
    
    method correr(cantMetros) {
        energia = energia - (cantMetros / 2)
        metrosRecorridos = cantMetros
    }  
    method velocidadMaxima() = 5 + (energia / 10)
    
    method comer (unRaton) {
        energia = energia +(12 + unRaton.peso())
        ultimoRatonComido = unRaton
    } 
    method puedeCazarADistancia(unaDistancia) {
        return unaDistancia / 2 <= energia
    }
    method cazarA(unRaton, unaDistancia) {
        self.correr(unaDistancia)
        self.comer(unRaton) /*self es para llamar*/
    } 
    method cazarA_SiPuede(unRaton, unaDistancia) {
        if (self.puedeCazarADistancia(unaDistancia)){
            self.cazarA(unRaton, unaDistancia)
        }
    }
}

object jerry {
    var edad = 2
    
    method edad() = edad
    method peso() = edad * 20
    method cumplirAnio() {
        edad = edad +1
    } 
}

object nibbles {
    method peso() = 35
}
// Inventar otro ratón

object branka {
    var edad = 5
    var peso = edad * 15 + 3
    method cumplirAnio() {
        edad = edad + 1
    } 
    method comerQueso() {
        peso = peso + 5
    }
    method escapar() = peso - 2 
}