class Instruments
    def initialize(name, type)
        @name = name
        @type = type
    end

    def description
        puts "#{@name}. This is a #{@type} type of an instrument."
    end
end


class Percussion < Instruments
    def additional_info
        puts "This is a musical instrument that is sounded by being struck or scraped by a beater including attached or enclosed beaters or rattles struck, scraped or rubbed by hand or struck against another similar instrument."
    end
end

class Strings < Instruments
    def additional_info
        puts "This are musical instruments that produce sound from vibrating strings when a performer plays or sounds the strings in some manner."
    end
end

drums = Percussion.new("Drums", "percussion")
puts drums.description
puts drums.additional_info

guitar = Strings.new("Guitar", "strings")
puts guitar.description
puts guitar.additional_info
    