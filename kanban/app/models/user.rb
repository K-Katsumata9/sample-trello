class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 20}
  has_many :lists, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
