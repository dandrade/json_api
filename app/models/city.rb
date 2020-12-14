class City < ApplicationRecord
  has_many :people
  validates :state, length: { is: 2 }
end
