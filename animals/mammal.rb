class Mammal
    def breath
        puts "inhale and exhale"
    end

    def eat
        puts "Yum yum yum"
    end

    def calling_speak
        speak
    end

    def calling_cry
        cry
    end

    private
        def cry
            puts "Sniff Sniff..."
        end

    protected
        def speak
            puts "I am a protected method"
        end
end









 puts "I am in the mammal file"