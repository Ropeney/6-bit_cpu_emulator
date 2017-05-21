module Operators
  class Adder
    include Helpers::Gates
    attr_accessor :a, :b, :c_in

    def carry_in
      if @c_in.respond_to? :c_out
        @c_in.c_out
      else
        @c_in
      end
    end

    def s
      xor(xor(@a, @b), carry_in)
    end

    def c_out
      ior(iand(@a, @b), iand(carry_in, xor(@a, @b)))
    end
  end
end
