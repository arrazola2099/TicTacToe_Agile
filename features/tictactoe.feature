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
