class Enclosure < ApplicationRecord
    has_many :employee
    has_many :event, dependent: :delete_all
    has_many :employee_enclosure, dependent: :delete_all
    validates :localization, presence: true
    validates :name, presence: true
end
