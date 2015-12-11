class Tablero
	
	WINNING = { 
				1 => [0,1,2],
				2 => [3,4,5],
				3 => [6,7,8],
				4 => [0,3,6],
				5 => [1,4,7],
				6 => [2,5,8],
				7 => [0,4,8],
				8 => [2,4,6]
			}

	def initialize
		@pos = ["click","click","click","click","click","click","click","click","click"]
		@turno = 0
		@winner = -1
	end

	def display
		tablero = "<table border=\"solid black\">"
		for i in 0..8 do
		    tablero += (i % 3 == 0 ? "<tr>" : "")
			x = @pos[i]
		    tablero += "<td ><form id=\"cell#{i}\" action=\"/elegir/#{i}\"><input type=\"submit\" value=\"#{x}\"></form></td>"
		    tablero += ((i+1) % 3 == 0 ? "</tr>" : "")
		end
		tablero += "</table>"

	end

	def e_cell(celda)
		if ! game_over? then
			@pos[celda.to_i] = @turno == 0 ? "o" : "x"
			@turno = (@turno + 1) % 2
		end
	end

	def turno
		@turno + 1
	end
	
	def game_over?
		! @pos.include? "click" or @winner != -1
	end

	def have_winner
		@winner != -1 ? "El jugador #{@winner} es el ganador" : ""
	end
	
	def display_game_over
		game_over? ? "El juego ha terminado" : ""
	end
	
	def win_opt? win_opt
		@pos[win_opt[0]] != "click" and @pos[win_opt[0]] == @pos[win_opt[1]] and @pos[win_opt[0]] == @pos[win_opt[2]]
	end
	
	def verify_winner
		WINNING.each do |key, win_opt|
			if win_opt? win_opt then
				@winner = @pos[win_opt[0]] == 'o' ? 1 : 2
				break
			end 
		end
	end

end	
