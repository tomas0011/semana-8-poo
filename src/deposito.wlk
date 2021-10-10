import bici.*
import accesorio.*

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
		return bicicletas.any( { bici => bici.carga() >= kg } )
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
	
	method hayCompanieras() {
		return bicicletas.any( { bicicleta => self.bicisCompanieras(bicicleta).size() > 0 } )
	}
	
	method parejasDeCompanieras() {
		const pares = #{}
		pares.addAll(bicicletas.map({bicicleta => {
			return self.bicisCompanieras(bicicleta).add(bicicleta)
		}}))
		return pares
	}
	
}
