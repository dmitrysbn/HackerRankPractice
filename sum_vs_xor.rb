#!/bin/ruby

def solve(n)
  if n >= 0 && n <= 10**15
    number_of_xs = 0

    (0..n).to_a.each do |x|
      if (n + x).to_s(2) == (n ^ x).to_s(2)
        number_of_xs += 1
      end
    end
    return number_of_xs
  end
end

n = gets.strip.to_i
result = solve(n)
puts result
