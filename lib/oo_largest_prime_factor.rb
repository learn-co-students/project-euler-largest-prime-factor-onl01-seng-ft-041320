require 'prime'

class LargestPrimeFactor
    attr_accessor :num

    def initialize(num)
        @num = num;
    end

    def number
        i = 2
        factors = [];
        while i < Math.sqrt(@num)
            if @num % i == 0 && Prime.prime?(i)
                factors << i
            end
            i += 1
        end
        factors.sort.last;
    end
end