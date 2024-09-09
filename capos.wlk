object rolando {
    var property mochila = #{} //const debido a que siempre es el mismo objeto
    var property capacidad = 2
    const hogar = castillo
    const historial = []

    method encontrar(artefacto) {
        if (mochila.size() < capacidad){
            mochila.add(artefacto)
            //mochila = mochila + #{artefacto}  -- Versión con var mochila = #{} como atributo, estilo funcional
        }
        historial.add(artefacto)
    }

    method mochila() {
        return mochila
    }

    method llegarAHogar() {
        hogar.almacenar(mochila)
        mochila.clear()
    }

    method posesiones() {
        return mochila + hogar.cofre()
        //return mochila.union(hogar.cofre) -- No sirve para trabajar con listas
    }

    method posee(artefacto) {
        return self.posesiones().contains(artefacto)
    }

    method historial() {
        return historial
    }

    method artefactoEnHistorial(indice) {
        return historial.get(indice)
    } 
}

object castillo {
    var property cofre = #{}

    method almacenar(artefactos) {
        cofre.addAll(artefactos) //Incorpora TODOS los elementos que haya en otra colección, en este caso los que hay en la mochila
    }
  
}


//----------ELEMENTOS----------\\ 
object espada {
  
}

object collar {
  
}

object libro {
  
}

object armadura {
  
}