class Animal < ApplicationRecord
  belongs_to :enclosure
  has_many :note
end
