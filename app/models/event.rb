class Event < ApplicationRecord
  belongs_to :enclosure
  has_many :reservation
  validates :name, presence: true
  validates :date, presence: true
end
