class List < ApplicationRecord
    validates :title, length: {in: 1..255}
    has_many :cards, dependent: :destroy
    belongs_to :user
end
