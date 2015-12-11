class Tablero

	def initialize
		@pos = ["click","click","click","click","click","click","click","click","click"]
		@turno = 0
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
		@pos[celda.to_i] = @turno == 0 ? "o" : "x"
		@turno = (@turno + 1) % 2
	end

	def turno
		@turno + 1
	end
	
	def game_over?
		! @pos.include? "click"
	end
	
	def display_game_over
		game_over? ? "El juego ha terminado" : ""
	end

end	
