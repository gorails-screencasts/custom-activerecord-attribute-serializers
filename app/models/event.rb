class Event < ApplicationRecord
  #serialize :metadata, coder: JSON

  serialize :price, coder: Price
  serialize :temperature, coder: Temperature
end
