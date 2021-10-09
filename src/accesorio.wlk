object farolito {
	method peso() = return 0.5
	method carga() = return 0
	method esLuminoso() = return  true
}

class Canasto {

	var property volumen
	method peso() = return volumen / 10
	method carga() = return volumen * 2
	method esLuminoso() = return false
}

class MorralDeBici {

	var property largo
	var property tieneOjoDeGato
	
	method peso() {return 1.2}
	method carga(){return largo/3}
	method esLuminoso() {return tieneOjoDeGato}
}
