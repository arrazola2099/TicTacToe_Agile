Feature: Tablero gato
como jugador
quiero ver un tablero vacio
para jugar una nueva partida

    Scenario: Veo mensaje de bienvenida
        Given inicio la aplicacion
        Then ver "Bienvenido a Gato"
    
    Scenario: Veo tablero vacio
        Given inicio la aplicacion
        Then ver tablero

	Scenario: Veo que al inicio es turno del jugador 1
		Given inicio la aplicacion
		Then ver "Es turno del jugador 1"

    Scenario: Click a la celda 0
        Given inicio la aplicacion
		When Usuario presiona la celda 0
        Then celda 0 contiene "o"
        
    Scenario: Veo el boton de reset
        Given inicio la aplicacion
        Then ver "Reiniciar"
    
    Scenario: Reseteo el tablero
        Given inicio la aplicacion
        When Usuario presiona la celda 1
        And Usuario presiona restart
        Then celda 1 contiene "click"

	Scenario: juego de 2 jugadores
		Given inicio la aplicacion
		When Usuario presiona la celda 1
		And Usuario presiona la celda 6
		Then celda 1 contiene "o"
		And celda 6 contiene "x"
		And celda 8 contiene "click"
	
	Scenario: El juego ha terminado
        Given inicio la aplicacion
        When Usuario presiona todas las celdas
		Then ver "El juego ha terminado"
