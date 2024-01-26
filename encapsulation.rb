class Rectangle
    def initialize(width, length)
        @width = width
        @length = length
    end

    def area
        @width * @length
    end
end

quad = Rectangle.new(2,5)
puts quad.area

