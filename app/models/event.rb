class Event < ApplicationRecord
  belongs_to :enclosure
  has_many :reservation, dependant: :delete_all
  validates :name, presence: true
  validates :date, presence: true
end
