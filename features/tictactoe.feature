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

    Scenario: Click a la celda 0
        Given inicio la aplicacion
		When Usuario presiona la celda 0
        Then celda 0 contiene " O "
        
    Scenario: Veo el boton de reset
        Given inicio la aplicacion
        Then ver "Reiniciar"
    
    Scenario: Reseteo el tablero
        Given inicio la aplicacion
        When Usuario presiona la celda 1
        And Usuario presiona restart
        Then celda 1 contiene "click"
