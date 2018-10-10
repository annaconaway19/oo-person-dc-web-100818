
# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(new_hy)
    if new_hy > 10
      @hygiene = 10
    elsif new_hy < 0
      @hygiene = 0
    else
      @hygiene = new_hy
  end
  end

  def happiness=(new_happ)
    if new_happ > 10
      @happiness = 10
    elsif new_happ < 0
      @happiness = 0
    else
      @happiness = new_happ
    end
  end

  def true_or_false(arg)
    if arg > 7
      true
    else
      false
    end
  end

  def clean?
    true_or_false(@hygiene)
  end

  def happy?
    true_or_false(@happiness)
  end

  def get_paid(salary)
    new_salary = @bank_account += (salary.to_i)
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
