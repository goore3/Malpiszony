class Event < ApplicationRecord
  belongs_to :enclosure
  has_many :reservation, dependent: :delete_all
  validates :name, presence: true
end
