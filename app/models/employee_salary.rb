class EmployeeSalary < ApplicationRecord
  belongs_to :employee
  has_many :bonus_payments
  has_many :absences

end
