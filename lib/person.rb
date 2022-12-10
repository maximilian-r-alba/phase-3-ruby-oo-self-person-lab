# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def name 
        @name
    end

    def happiness=value 
        if 0 <= value && value <= 10
            @happiness = value
        elsif value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        end

    end

    def hygiene= value
        if value <= 0
            @hygiene = 0
        elsif value >= 10
            @hygiene = 10
        elsif
            @hygiene = value
        end

    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid amount
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        case topic
        when 'politics'
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        when 'weather'
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end

end
binding.pry
0