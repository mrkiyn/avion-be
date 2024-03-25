def middle(arr)
    max_num = arr[0]
    min_num = arr [0]

    arr.each do |index|
        if index > max_num 
            max_num = index
        elsif index < min_num
            min_num = index
        end
    end
    
    mid_num = arr.index {|i| i != max_num && i != min_num}
    return mid_num
end

puts middle([2, 1, 3])
puts middle([5, 3, 4])