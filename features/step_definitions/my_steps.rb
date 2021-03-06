Given(/^inicio la aplicacion$/) do
    visit '/'
end

Then(/^ver "(.*?)"$/) do |texto|
    last_response.body.should =~ /#{texto}/
end

Then(/^ver tablero$/) do
    tablero = "<table border=\"solid black\">"
    for i in 0..8 do
        tablero += (i % 3 == 0 ? "<tr>" : "")
        tablero += "<td ><form id=\"cell#{i}\" action=\"/elegir/#{i}\"><input type=\"submit\" value=\"click\"></form></td>"
        tablero += ((i+1) % 3 == 0 ? "</tr>" : "")
    end
    tablero += "</table>"
    last_response.body.should =~ /#{tablero}/
end


When(/^Usuario presiona la celda (\d+)$/) do |celda|
	submit_form("cell#{celda}")
end

Then(/^celda (\d+) contiene "(.*?)"$/) do |celda, valor|
    str = "<form id=\"cell#{celda}\" action=\"/elegir/#{celda}\"><input type=\"submit\" value=\"#{valor}\"></form>"
	last_response.body.should =~ /#{str}/
end

When(/^Usuario presiona restart$/) do
    click_link 'restart-game'
end

When(/^Usuario presiona todas las celdas$/) do
	for i in 0..8 do
		submit_form("cell#{i}")
	end
end


