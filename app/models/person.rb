class Person < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 75}
  validates :last_name, presence: true, length: { maximum: 75}
  validates :email, presence: true, length: { maximum: 254 }, uniqueness: true
  validates :job, length: { maximum: 75 }, allow_blank: true
  validates :gender, presence: true, numericality: { only_integer: true }, inclusion: [0,1,2,9]
  validate :birthday_is_not_in_the_future
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  belongs_to :company 
  has_one_attached :picture

  def birthday_is_not_in_the_future
    if !birthdate.nil? && birthdate > Date.today 
      errors.add(:birthdate, "cannot be in the future")
    end
  end    

end
