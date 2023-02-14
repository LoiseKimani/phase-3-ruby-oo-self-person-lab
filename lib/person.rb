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

  def work_out
    self.hygiene = [@hygiene - 3, 0].max
    self.happiness = [@happiness + 2, 10].min
    "♪ Another one bites the dust ♪"
  end

  def call_friend(friend)
    self.happiness = [@happiness + 3, 10].min
    friend.happiness = [friend.happiness + 3, 10].min
    "Hi #{friend.name}! It's great to hear from you!"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness = [@happiness - 2, 0].max
      friend.happiness = [friend.happiness - 2, 0].max
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = [@happiness + 1, 10].min
      friend.happiness = [friend.happiness + 1, 10].min
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
