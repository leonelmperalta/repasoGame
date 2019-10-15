import wollok.game.*

object toni {
	var property position = game.at((0.randomUpTo(game.width()- 1).truncate(0)), (0.randomUpTo(game.height()-1).truncate(0)))
	var energia = 100
	var cantidadPasos = 0
	
	method image() = "player.png"
	
	method contarPasos(){
		cantidadPasos++
		if(cantidadPasos % 10 == 0){
			energia --
		}
	}
	method moverArriba(){	
		if(self.position().y() != game.height() - 1){
			self.position(self.position().up(1))
			self.contarPasos()
		}
	}
	
	method moverAbajo(){
		if(self.position().y() != 0){
			self.position(self.position().down(1))
			self.contarPasos()
		}
	}
	method moverIzquierda(){
		if(self.position().x() != 0){
			self.position(self.position().left(1))
			self.contarPasos()
		}
	}
	method moverDerecha(){
		if(self.position().x() != game.width() - 1){
			self.position(self.position().right(1))
			self.contarPasos()
		}
	}
	method decirEnergia(){
		game.say(self, "Mi energia es: " + energia)
	}
	method decirCantidadPasos(){
		game.say(self, "La cantidad de pasos que di es: " + cantidadPasos)
	}
}
