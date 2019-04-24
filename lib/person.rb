# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

   def initialize(name)
     @name = name
     @bank_account = 25
     @happiness = 8
     @hygiene = 8
   end

   def happiness=(happiness)
     if happiness > 10
       @happiness = 10
     elsif happiness < 0
       @happiness = 0
     else
    @happiness = happiness
   end
 end

 def hygiene=(hygiene)
   if hygiene > 10
     @hygiene = 10
   elsif hygiene < 0
     @hygiene = 0
   else
  @hygiene = hygiene
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
     if @happiness > 10
       @happiness = 10
       true
     elsif @happiness > 7 && @happiness <=10
       true
     else
       false
   end
 end

  def get_paid(salary)
    @bank_account += salary
     "all about the benjamins"
   end

   def take_bath
     # if hygiene <= 6
     #   @hygiene += 4
     #   "♪ Rub-a-dub just relaxing in the tub ♫"
     #  else
     #    @hygiene = 10
     # "♪ Rub-a-dub just relaxing in the tub ♫"
     self.hygiene += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
     self.happiness += 2
     self.hygiene -= 3
     "♪ another one bites the dust ♫"
   end

   def call_friend(friend)
     self.happiness += 3
     friend.happiness += 3
     "Hi #{friend.name}! It's #{@name}. How are you?"
   end

   def start_conversation(person, topic)

     # If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
     if topic == "politics"
       self.happiness -= 2
       person.happiness -= 2
       "blah blah partisan blah lobbyist"
     elsif topic == "weather"
     # If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
     self.happiness += 1
     person.happiness += 1
     "blah blah sun blah rain"
     # If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
      else
         "blah blah blah blah blah"
    end
  end

end
