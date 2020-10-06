# Enter your procedural solution here!
require 'prime'

def largest_prime_factor(num) 
    factors = get_factors(num);
    factors.sort.last
end

def get_factors(num) 
    i = 2
    factors = [];
    while i < Math.sqrt(num)
        if num % i == 0 && Prime.prime?(i)
            factors << i
        end
        i += 1
    end
    factors
end