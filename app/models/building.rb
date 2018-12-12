class Building < ApplicationRecord
    validates :name, presence: true, length: { maximum: 75}
    validates :location, presence: true

    has_and_belongs_to_many :companies
end
