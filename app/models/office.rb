class Office < ApplicationRecord
  belongs_to :company
  has_many :jobs
end
