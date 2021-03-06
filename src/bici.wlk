import accesorio.*

class Bici {
	var property rodado
	var property largo
	var property marca
	const accesorios = []
	
	method agregarAccesorio(accesorio) {
		accesorios.add(accesorio)
	}
	
	method quitarAccesorio(accesorio) {
		accesorios.remove(accesorio)
	}
	
	method altura() {
		return rodado * 2.5 + 15
	}
	

	method velocidadCrucero() {
		return if (largo > 120) {
			rodado+6
		} else {
			rodado+2
		}
	}
	
	method carga() = accesorios.sum( { accesorio => accesorio.carga()} )
	
	method peso() = rodado/2 + accesorios.sum( { accesorio => accesorio.peso() } )
	
	method tieneLuz() = accesorios.any( { accesorio => accesorio.esLuminoso() } )

	method cantidadAccesoriosLivianos() = accesorios.count( { a => a.peso() < 1 } )
}