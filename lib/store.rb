class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, message: "should be a number." }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, message: "Annual revenue must be greater than 0"}
  validate :validate_store_apparel

  def validate_store_apparel
    if !mens_apparel && !womens_apparel
      errors.add :mens_apparel, :womens_apparel, message: "One of the options must be selected"
    end

  end
end
