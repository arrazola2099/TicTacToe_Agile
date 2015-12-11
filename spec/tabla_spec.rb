require "./lib/Tablero"

describe "Tablero" do
	it "should generate an empty table" do
	tb = Tablero.new
	str = tb.display()
	expect(str).to eq("<table border=\"solid black\"><tr><td ></td><td ></td><td ></td></tr><tr><td ></td><td ></td><td ></td></tr><tr><td ></td><td ></td><td ></td></tr></table>")
	end

end
