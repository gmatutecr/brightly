class Company < ApplicationRecord
  validates :name, presence: true, length: { maximum: 75}
  validates :business_description, presence: true
  validates :location, length: { maximum: 254}
end
