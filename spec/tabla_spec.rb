require "./lib/Tablero"

describe "Tablero" do
    before(:all) do
        @tb = Tablero.new
    end
	it "should generate an empty table" do
	    str = @tb.display()
    	expect(str).to include("<table border=\"solid black\">")
	end
	
	it "should have a form for cell 7" do
	    str = @tb.display()
	    expect(str).to include("id=\"cell7\"")
	end
	
	it "should have a button that says click" do
	    str = @tb.display()
	    expect(str).to include ("click")
	end

end
