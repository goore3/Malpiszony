class Employee < ApplicationRecord
    has_many :note
    has_many :employee_enclosure
    validates :first_name, presence: true, length: {minimum: 2, maximum: 20}
    validates :last_name, presence: true, length: {minimum: 2, maximum: 25}
    validates :phone, presence: true, length: {is:9}, format: {with: /\A[+-]?\d+\z/, message: "only allows numbers"} 
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
