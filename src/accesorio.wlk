object farolito{
	method peso() = return 0.5
	method carga() = return 0
	method esLuminoso() = return  true
}

object canasto{
	var property volumen
	method peso() = return volumen / 10
	method carga() = return volumen * 2
	method esLuminoso() = return false
}

object morralDeBici{
	var property largo
	var property tieneOjoDeGato = false
	method peso() = return 1200
	method carga() = largo/3
	method esLuminoso() = return tieneOjoDeGato
}
