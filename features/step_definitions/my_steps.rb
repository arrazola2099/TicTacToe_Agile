Given(/^inicio la aplicacion$/) do
    visit '/'
end

Then(/^ver "(.*?)"$/) do |texto|
    last_response.body.should =~ /#{texto}/
end

Then(/^ver tablero$/) do
    tablero = "<table>"
    for i in 0..8 do
        tablero += (i % 3 == 0 ? "<tr>" : "")
        tablero += "<td id=\"cell#{i}\"></td>"
        tablero += (i % 3 == 0 ? "</tr>" : "")
    end
    tablero = "</table>"
    last_response.body.should =~ /#{tablero}/
end

