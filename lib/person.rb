# your code goes here
class Person

  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(lvl)
    if lvl > 10
      @happiness = 10
    elsif lvl < 0
      @happiness = 0
    else
      @happiness = lvl
    end
  end

  def hygiene=(lvl)
    if lvl > 10
      @hygiene = 10
    elsif lvl < 0
      @hygiene = 0
    else
      @hygiene = lvl
    end
  end

  def take_bath
    new_lvl = @hygiene + 4
    self.hygiene= new_lvl
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    hyg_lvl = @hygiene - 3
    self.hygiene= hyg_lvl

    hap_lvl = @happiness + 2
    self.happiness= hap_lvl
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    hap_lvl = @happiness + 3
    self.happiness= hap_lvl

    hap_lvl = person.happiness + 3
    person.happiness= hap_lvl

    return "Hi #{person.name}! It's #{name}. How are you?"
  end

  def happy?
    @happiness > 7? true : false
  end

  def clean?
    @hygiene > 7? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      hap_lvl = @happiness - 2
      self.happiness= hap_lvl

      hap_lvl = person.happiness - 2
      person.happiness= hap_lvl

      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      hap_lvl = @happiness + 1
      self.happiness= hap_lvl

      hap_lvl = person.happiness + 1
      person.happiness= hap_lvl

      return "blah blah sun blah rain"
    else

      return "blah blah blah blah blah"
    end
  end
  
end
