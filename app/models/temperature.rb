class Temperature
  attr_reader :degrees

  def self.load(value)
    new(value)
  end

  def self.dump(value)
    case value
    when self
      value.degrees
    else
      new(value).degrees
    end
  end

  def initialize(value)
    @degrees = value.to_i
  end

  def fahrenheit
    degrees
  end

  def celcius
    (degrees - 32) * 5/9.0
  end
end