import accesorio.*

class Bici{
	var property rodado
	var property largo
	var property marca
	var accesorios = []
	
	method altura(){
		return rodado*2.5 + 15
	}
	
	method velocidad(){
		return if (largo > 120) {
			rodado+6
		} else {
			rodado+2
		}
	}
	
	method carga() = return accesorios.sum( { accesorio => accesorio.carga()} )
	
	method peso() = return rodado/2 + accesorios.sum( { accesorio => accesorio.peso()} )
	
	method tieneLuz() = return accesorios.any( { accesorio => accesorio.esLuminoso() } )
}

