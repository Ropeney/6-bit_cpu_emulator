module Helpers
  module Gates
    def xor(a, b)
      a ^ b
    end

    def iand(a, b)
      a & b
    end

    def inot(a)
      !a
    end

    def ior(a, b)
      a | b
    end
  end
end
