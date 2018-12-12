class Building < ApplicationRecord
    validates :name, presence: true, length: { maximum: 75}
    validates :location, presence: true
end
