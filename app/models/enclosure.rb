class Enclosure < ApplicationRecord
    has_many :employee
    has_many :event, dependant: :delete_all
    has_many :employee_enclosure, dependant: :delete_all
    validates :localization, presence: true
    validates :name, presence: true
end
