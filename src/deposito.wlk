import bici.*
import accesorio.*
/*
var b1 = new Bici(rodado=26,largo=120, marca="BMX")
var b2 = new Bici(rodado=15,largo=90, marca="playera")
var b3 = new Bici(rodado=20,largo=110, marca="BMX")
var b4 = new Bici(rodado=26,largo=122, marca="BMX")
var dep = new Deposito()
dep.agregarBici(b1)
dep.agregarBici(b2)
dep.agregarBici(b4)
*/		

class Deposito {
	const bicicletas = []
	
	method agregarBici(bici){
		bicicletas .add(bici)
	}
	
	method bicicletasEnDeposito() {
		return bicicletas 
	}
	
	method bicisRapidas() {
		return bicicletas.filter( { bici => bici.velocidadCrucero() > 25} )
	}
	
	method marcas() {
		const lista = #{}
		lista.addAll( bicicletas.map( { bici => bici.marca() } ) )
		return lista
		
	}
	
	method esNocturno() {
		return bicicletas.all( { bici => bici.tieneLuz() } )
	}
	
	method hayCapazDeCargar_(kg) {
		return bicicletas.any( { bici => bici.carga() >= kg * 1000 } )
	}
	
	method marcaDeBiciMasRapida() {
		return bicicletas.max( { bici => bici.velocidadCrucero() } ).marca()
	}
	
	method cargaTotalDeBicisMasLargas() {
		return bicicletas.filter( { bici => bici.largo() > 170 } ).sum( { bici => bici.carga() } )
	}
	
	method cantidadDeBicisSinAccesorios() {
		return bicicletas.count( { bici => not bici.tieneAccesorios() } )
	}
	
	method bicisCompanieras(bicicletaAComparar) {
		return bicicletas.filter( { biciComparada => (
					(biciComparada.marca() == bicicletaAComparar.marca())
					and ((biciComparada.largo() - bicicletaAComparar.largo()).abs() <= 10)
					and (biciComparada != bicicletaAComparar)
				)
			}
		)
	}
}
