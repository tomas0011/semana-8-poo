import bici.*
import accesorio.*

class Deposito{
	var property bicisGuardadas = []
	
	method bicisRapidas(){return bicisGuardadas.filter({b => b.velocidaDeCrucero() > 25})}
	method marcas(){return bicisGuardadas.map({b => b.marca()}).asSet()}
	method esNocturno(){return bicisGuardadas.all({b => b.tieneLuz()})}
	method tieneBicicletaParaLlevar(kg){return bicisGuardadas.any({b => b.carga() > kg})}
	method biciMasrapida(){return bicisGuardadas.max({b => b.velocidaDeCrucero()})}
	method cargaTotalBicisLargas(){
		const bicisLargas = bicisGuardadas.filter({ b => b.largo() > 170})
		
		return bicisLargas.sum({b => b.carga()})
	}

}
