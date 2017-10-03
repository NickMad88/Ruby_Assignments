class Human
    attr_accessor :strength, :intelligence, :stealth, :health

    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(which_human)
        if which_human.class.ancestors.to_s.include?("Human")
            puts "This is a human!"
            which_human.health -= 10
            puts which_human.health
        else
            puts "What kind of dog is this?"
        end

    end


end

human1 = Human.new
human2 = Human.new
human1.attack(human2)