require_relative '../helpers/gates.rb'
require_relative '../modules/adder.rb'

adder = Operators::Adder.new
adder.a = true
adder.b = false
raise "S should be true" unless adder.s
raise "c_cout should be false" if adder.c_out

adder = Operators::Adder.new
adder.a = true
adder.b = true
raise "S should be false" if adder.s
raise "c_cout should be true" unless adder.c_out

adder_2 = Operators::Adder.new
adder_2.c_in = adder
adder_2.a = true
raise "S should be false" if adder_2.s
raise "c_cout should be true" unless adder_2.c_out

adder_2 = Operators::Adder.new
adder_2.c_in = adder
adder_2.a = false
raise "S should be true" unless adder_2.s
raise "c_cout should be false" if adder_2.c_out

print "All tests passed for Adder\n"
