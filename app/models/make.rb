class Make < ApplicationRecord
  has_many :cars

  validates :name, presence: true, uniqueness: true, length: {minimum: 2}
  validates :country, presence: true, length: {minimum: 2}
end
