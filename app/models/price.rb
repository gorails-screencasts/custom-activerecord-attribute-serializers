class Price
  def self.load(value)
    new(value) if value
  end

  def self.dump(value)
    case value
    when nil
      nil
    when self
      value.amount
    else
      new(value).amount
    end
  end

  attr_reader :amount

  def initialize(amount)
    @amount = amount.to_i
  end

  def dollars
    amount / 100
  end

  def cents
    amount % 100
  end
end