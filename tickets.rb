def waiting_time_original(tickets, p)
  time = 0

  while tickets[p] > 0

    tickets.each_with_index do |number, i|
      if tickets[p] > 0 && tickets[i] > 0
        tickets[i] -= 1
        time += 1
      end
    end
  end

  return time

end

puts 1.equal?(waiting_time_original([1, 1, 1, 1], 0))
puts 4.equal?(waiting_time_original([1, 1, 1, 1], 3))
puts 6.equal?(waiting_time_original([2, 6, 3, 4, 5], 0))
puts 20.equal?(waiting_time_original([2, 6, 3, 4, 5], 1))
puts 12.equal?(waiting_time_original([2, 6, 3, 4, 5], 2))
puts 16.equal?(waiting_time_original([2, 6, 3, 4, 5], 3))
puts 19.equal?(waiting_time_original([2, 6, 3, 4, 5], 4))

def waiting_time_improved(tickets, p)
  time = 0
  tickets_needed = tickets[p]

  tickets.each_with_index do |number, i|
    if i < p
      time += [number, tickets_needed].min
    elsif i > p
      time += [number, tickets_needed - 1].min
    else
      time += tickets_needed
    end
  end

  return time
end

puts 1.equal?(waiting_time_improved([1, 1, 1, 1], 0))
puts 4.equal?(waiting_time_improved([1, 1, 1, 1], 3))
puts 6.equal?(waiting_time_improved([2, 6, 3, 4, 5], 0))
puts 20.equal?(waiting_time_improved([2, 6, 3, 4, 5], 1))
puts 12.equal?(waiting_time_improved([2, 6, 3, 4, 5], 2))
puts 16.equal?(waiting_time_improved([2, 6, 3, 4, 5], 3))
puts 19.equal?(waiting_time_improved([2, 6, 3, 4, 5], 4))
