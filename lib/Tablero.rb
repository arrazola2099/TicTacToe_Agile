class Tablero

	def display
		tablero = "<table border=\"solid black\">"
		for i in 0..8 do
		    tablero += (i % 3 == 0 ? "<tr>" : "")
		    tablero += "<td ><form id=\"cell#{i}\"><input type=\"submit\" value=\"click\"></form></td>"
		    tablero += ((i+1) % 3 == 0 ? "</tr>" : "")
		end
		tablero += "</table>"

	end

#id=\"cell#{i}\"



end
