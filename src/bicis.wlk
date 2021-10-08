

class Bici{
	var property rodado
	var property largo
	var property marca
	var accesorios = []
	
	method altura(){
		return rodado*2.5 + 15
	}
	
	method velocidad(){
		return if (largo > 120) {rodado+6} else {rodado+2}
	}
	
	method carga() = return accesorios.sum( { accesorio => accesorio.carga()} )
	
	method peso() = return rodado/2 + accesorios.sum( { accesorio => accesorio.peso()} )
	
	method tieneLuz() = return accesorios.any( { accesorio => accesorio.esLuminoso() } )
}






// ----------------------------------------------------- //
//         				ACCESORIOS						 //
// ----------------------------------------------------- //






object farolito{
	method peso() = return 500
	method carga() = return 0
	method esLuminoso() = return  true
}
object canasto{
	var property volumen
	method peso() = return volumen/10
	method carga() = return volumen*2
	method esLuminoso() = return false
}
object morralDeBici{
	var property largo
	var property tieneOjoDeGato = false
	method peso() = return 1200
	method carga() = largo/3
	method esLuminoso() = return tieneOjoDeGato
}








