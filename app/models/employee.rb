class Employee < ApplicationRecord
    has_many :note
    has_many :employee_enclosure
end
