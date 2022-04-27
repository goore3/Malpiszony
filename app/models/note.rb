class Note < ApplicationRecord
  belongs_to :employee
  belongs_to :animal
  validates :content, presence: true
end
