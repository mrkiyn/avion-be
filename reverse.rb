def reverse(str)
    rev_str = ''
    i = str.length - 1
    
    while i >= 0
        rev_str << str[i]
        i -= 1
    end

    return rev_str
end

puts reverse('test')
puts reverse('sample')