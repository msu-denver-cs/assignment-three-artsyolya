class CarsPart < ApplicationRecord
  belongs_to :part
  belongs_to :car

  validates_associated :car, :part
  validates_uniqueness_of :part_id, :car_id

end
