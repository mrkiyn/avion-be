class BasketballPlayer
    def shoot
        puts "Shot Attempt has been made..."
    end

    def shot_attempt(point)
        point.value
    end
end

class TwoPoints
    def value
        puts "You made a Two Point Shot."
    end
end

class ThreePoints
    def value
        puts "You made a Three Point Shot."
    end
end

player1 = BasketballPlayer.new
three = ThreePoints.new
player1.shot_attempt(three)


player2 = BasketballPlayer.new
two = TwoPoints.new
player2.shot_attempt(two)