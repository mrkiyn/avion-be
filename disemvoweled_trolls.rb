def disemvoweled(string)

    vowels = "aeiouAEIOU"
    disemvoweled_sentence = ""

    string.each_char do |char|
        disemvoweled_sentence += char unless vowels.include?(char)
    end

    disemvoweled_sentence
end

puts disemvoweled("This website is for losers LOL!")