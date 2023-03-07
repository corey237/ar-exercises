class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, message: "should be a number." }
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200, message: "Should be a number between 40 and 200"}
  
  
end
