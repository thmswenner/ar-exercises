class Employee < ActiveRecord::Base
  belongs_to :store
  validates_associated :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, length: { in: 40..200 }
end
