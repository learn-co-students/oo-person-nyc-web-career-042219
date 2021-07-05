class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    @happiness = points

    if @happiness > 10
      @happiness = 10
    end

    if @happiness < 0
      @happiness = 0
    end

  end

  def hygiene=(points)
    @hygiene = points

    if @hygiene > 10
      @hygiene = 10
    end

    if @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    if self.happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if self.hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
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

  def call_friend(friend)

    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end
end
