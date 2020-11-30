class Employee < ApplicationRecord
	has_many :employee_details
validates :name,:designation, presence: true
validates :name, uniqueness: true
end
