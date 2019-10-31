class Car < ApplicationRecord
  belongs_to :make
  has_and_belongs_to_many :parts

  validates :model, presence: true, uniqueness: true, length: {minimum: 2}
  validates :vin, presence: true, uniqueness: true, length: { is: 17},
            format: { with: /\A[0-9A-Z]+\z/, message: "only allows numbers and capital letters"}
  validates_presence_of :make_id, :parts
end
