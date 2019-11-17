class Job < ApplicationRecord
  belongs_to :office
  has_many :employees
  has_many :required_skills
  has_many :required_equipment
end
