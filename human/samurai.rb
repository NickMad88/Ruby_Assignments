require_relative "human"

class Sumarai < Human

    @@num_of_samurai = 0

    def initialize
        super
        @health = 200
        @@num_of_samurai += 1
    end

    def death_blow(obj)
        obj.health = 0
    end

    def meditate
        @health = 200
    end

    def self.count
        @@num_of_samurai
    end



end