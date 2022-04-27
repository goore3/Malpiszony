class Animal < ApplicationRecord
  belongs_to :enclosure
  has_many :note
  validates :age, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :name, presence: true
  validates :species, presence: true
end


