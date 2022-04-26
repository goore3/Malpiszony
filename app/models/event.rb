class Event < ApplicationRecord
  belongs_to :enclosure
  has_many :reservation
end
