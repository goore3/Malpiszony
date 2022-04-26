class Enclosure < ApplicationRecord
    has_many :employee
    has_many :event
    has_many :employee_enclosure
end
