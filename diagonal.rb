#!/bin/ruby

def diagonalDifference(a)
  n = a.length
  main_diagonal = 0
  side_diagonal = 0

  (0..n-1).to_a.each do |i|
    main_diagonal += a[i][i]
    side_diagonal += a[n-1-i][i]
  end
  return (main_diagonal - side_diagonal).abs
end

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end
result = diagonalDifference(a)
puts result
