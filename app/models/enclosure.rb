class Enclosure < ApplicationRecord
    has_many :employee
    has_many :event
    has_many :employee_enclosure
    has_many :animals
    validates :localization, presence: true
    validates :name, presence: true
end
