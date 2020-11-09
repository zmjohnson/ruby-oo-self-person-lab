# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
  
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
    end
  
    def happiness=(points)
      @happiness = points
  
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      else
        @happiness
      end
    end
  
    def hygiene=(points)
      @hygiene = points
  
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      else
        @hygiene
      end
    end
  
    def clean?
      if @hygiene > 7
        true
      else 
        false
      end
    end
    def happy?
      if @happiness > 7
        true
      else 
        false
      end
    end
    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
      self.happiness+=2
      self.hygiene-=3
      "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
      self.happiness+=3
      friend.happiness+=3
      "Hi #{friend.name}! It's #{@name}. How are you?"
    end
  
    def start_conversation(friend, topic)
      if topic == "politics"
        friend.happiness-=2
        self.happiness-=2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        friend.happiness+=1
        self.happiness+=1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  end
  
  stella = Person.new("Stella")
  # p stella.happiness
  # p stella.hygiene
  p stella.work_out
  p stella.happiness
  # p stella.hygiene
  # p stella.take_bath
  # p stella.hygiene
  
  puts "CALLING FELIX..."
  felix = Person.new("Felix")
  stella.happiness = 9
  p stella.happiness
  # stella.call_friend(felix)
  # p stella.happiness
  # p stella.get_paid(2000)
  # p stella.bank_account