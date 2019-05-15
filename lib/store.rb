class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true
  validates :annual_revenue, numericality: {only_integer: true} 
end

