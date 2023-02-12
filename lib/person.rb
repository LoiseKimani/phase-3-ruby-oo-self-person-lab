# your code goes here
class Person
  attr_reader :name
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account
    @bank_account
  end

  def bank_account=(amount)
    @bank_account = amount
  end

  def happiness
    @happiness
  end

  def happiness=(amount)
    amount = 10 if amount > 10
    amount = 0 if amount < 0
    @happiness = amount
  end

  def hygiene
    @hygiene
  end

  def hygiene=(amount)
    amount = 10 if amount > 10
    amount = 0 if amount < 0
    @hygiene = amount
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = [@hygiene + 4, 10].min
    "♪ Rub-a-dub just relaxing in the tub ♪"
  end
  end
end
