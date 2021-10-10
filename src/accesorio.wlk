

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




/*
 
 --------------------------------------------------
  RESPUESTAS PUNTO 5
  
  
  Porta botellitas de agua:
  	Se dfine una nueva calse con el nombre "PortaBotellitasDeAgua" 
  	con las variables "tieneBotella" (bool) y "cantidadDeLiquido" (float).
  	
  	Peso: Si no tiene botella, retorna el peso del porta botellas, 
  	sino retorna este peso + la cantidad de liquido.
  	
  	
  Canasto:
  	En este caso proponemos agregar una variable property indicando si
  	el canasto es delantero o trasero (bool)
  
  
  Luces de rueda:
	Convertir farolito en clase y cambiar su nombre por "Luces".
	Crear una variable property indicando si es farolito o son luces de rueda.
 
 
 
  
 */




