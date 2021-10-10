class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true

class Canasto {
	var property volumen
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false
}

class MorralDeBici {
	var property largo
	var property tieneOjoDeGato
	
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = tieneOjoDeGato
}

/* 
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
