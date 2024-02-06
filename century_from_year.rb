def centuryFromYear(int)
    if int % 100 == 0
        century = int / 100 
    else
        century = ( int / 100 ) + 1 
    end
end

puts centuryFromYear(1705)
puts centuryFromYear(1900)
puts centuryFromYear(1601)
puts centuryFromYear(2000)
