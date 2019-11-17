class Employee < ApplicationRecord
  belongs_to :job
  has_many :family_members
  has_many :skills
  has_many :assigned_equipments
  has_many :employee_salaries
  has_many :previous_jobs
end
