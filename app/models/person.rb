class Person < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 75}
  validates :last_name, presence: true, length: { maximum: 75}
  validates :email, presence: true, length: { maximum: 254 }, uniqueness: true
  validates :job, length: { maximum: 75 }, allow_blank: true
  validates :gender, presence: true, numericality: { only_integer: true }, inclusion: [0,1,2,9]
end
