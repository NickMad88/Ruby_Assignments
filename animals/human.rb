require_relative 'mammal'
class Human < Mammal
    def subclass_method
        breath
    end

    def another_method
        self.eat
    end

    def explicitly_speak
        self.speak
    end
    
    def implictly_speak
        speak
    end

    def exlicitly_cry
        self.cry
    end

    def implictly_cry
        cry
    end
end

human = Human.new

puts "I am in the human file"