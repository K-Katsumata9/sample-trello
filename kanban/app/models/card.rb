class Card < ApplicationRecord
    validates :title, length: {in: 1..255}
    validates :memo, length: {maximum: 1000}
    belongs_to :list
end
