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

  end
end
