class Car < ActiveRecord::Base
  validates :make, :model, :year, :price, presence: true
  validates :price,
    numericality: {
    greater_than: 0.00,
    less_than: 1_000_000
  }
  validates :year, inclusion: 1769..Time.zone.now.year

  belongs_to :user
end
