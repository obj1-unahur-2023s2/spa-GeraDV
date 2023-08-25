object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion(){ return gradoDeConcentracion }
	method recibirMasaje(){ gradoDeConcentracion += 3}
	
	method discutir(){gradoDeConcentracion -= 1}
	
	method tomarBanioDeVapor(){}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasaje(){ esFeliz = true}
	method tomarBanioDeVapor(){
		peso -= 500
		tieneSed = true
	}
	method tomarAgua(){ tieneSed = false}
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){ peso -= 300}
	method verNoticiero(){ esFeliz = false}
	
	method estaPerfecto(){
		return(esFeliz && !tieneSed && peso.between(50000, 70000))
	}
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura = 0
	var tienePielGrasosa = false
	
	method contractura() = contractura
	method tienePielGrasosa() = tienePielGrasosa
	
	method recibirMasaje(){contractura = 0.max(contractura-2)}
	method tomarBanioDeVapor(){tienePielGrasosa = false}
	method comerBigMac(){tienePielGrasosa = true}
	method bajarALaFosa(){
		tienePielGrasosa = true
		contractura += 1
	}
	method jugarPaddle(){contractura += 3}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}
