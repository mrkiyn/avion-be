def find_unique(arr)
    arr.each do |num|
      return num if arr.count(num) == 1
    end
  end

puts find_unique([ 1, 2, 1, 1, 1 ])
puts find_unique([ 0, 0, 0, 0.5, 0 ])
puts find_unique([ "a", "a", "a", "b", "a"])