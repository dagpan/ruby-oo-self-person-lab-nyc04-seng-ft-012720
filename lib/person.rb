# your code goes here
class Person
    attr_reader :name, :happiness, :bank_account, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(level)
        if level > 10
            @happiness = 10
        elsif level < 0
            @happiness = 0
        else
            @happiness = level
        end
    end
    def bank_account=(amount)
        @bank_account +=amount
    end
    def hygiene=(level)
        if level > 10
            @hygiene = 10
        elsif level < 0
            @hygiene = 0
        else
            @hygiene = level
        end
    end
    def happy?
        if @happiness > 7
            return true
        else
            false
        end
    end
    def clean?
        if @hygiene > 7
            return true
        else
            false
        end
    end
    def get_paid(amount)
        @bank_account += amount
        p "all about the benjamins"
    end
    def take_bath
        self.hygiene = (hygiene + 4)
        if @hygiene > 10
           @hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene = (hygiene - 3)
        if @hygiene > 10
           @hygiene = 10
        end
        self.happiness = (happiness + 2)
        if @hygiene > 10
           @hygiene = 10
        end
        "♪ another one bites the dust ♫"
    end
    def call_friend(inst)
        self.happiness = (happiness + 3)
        if @happiness > 10
           @happiness = 10
        end
        inst.happiness = (inst.happiness + 3)
        if inst.happiness > 10
           inst.happiness = 10
        end
        "Hi #{inst.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(inst, topic)
        if topic == "politics"
            self.happiness = (happiness - 2)
            if @happiness > 10
               @happiness = 10
            end
            inst.happiness = (inst.happiness - 2)
            if inst.happiness > 10
               inst.happiness = 10
            end
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (happiness + 1)
            if @happiness > 10
               @happiness = 10
            end
            inst.happiness = (inst.happiness + 1)
            if inst.happiness > 10
               inst.happiness = 10
            end
            "blah blah sun blah rain"
        else# topic == "other"
            # self.happiness = (happiness + 1)
            # if @happiness > 10
            #    @happiness = 10
            # end
            # inst.happiness = (inst.happiness + 1)
            # if inst.happiness > 10
            #    inst.happiness = 10
            # end
            "blah blah blah blah blah"
        
        end
    end

end