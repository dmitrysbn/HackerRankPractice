# Enter your code here. Read input from STDIN. Print output to STDOUT
test_strings = []
number_of_tests = gets.to_i

(1..number_of_tests).each do
  test_string = gets.chomp
  test_strings << test_string
end

def all_substrings(string)
  substrings = []
  n = string.length

  (1..n).each do |i|
    (0..n - i).each do |j|
      substrings << string[j..j + i - 1]
    end
  end
  return substrings
end

def unique_substrings(string)
  all_substrings = all_substrings(string)
  unique_substrings = []

  all_substrings.each do |ss|
    unless unique_substrings.include?(ss)
      unique_substrings << ss
    end
  end

  return unique_substrings
end

def number_of_unique_characters(string)
  all_chars = string.chars
  unique_chars = []

  all_chars.each do |c|
    unless unique_chars.include?(c)
      unique_chars << c
    end
  end

  return unique_chars.size
end

# puts number_of_unique_characters("abcdeeeee")

def p(string)
  ((string.length) ** (number_of_unique_characters(string))) % ((10 ** 9) + 7)
end

test_strings.each do |string|
  sum = 0
  unique_substrings(string).each do |ss|
    sum += p(ss)
  end
  puts sum % ((10 ** 9) + 7)
end
