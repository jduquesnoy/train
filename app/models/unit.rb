class Unit < ApplicationRecord
  belongs_to :subfaction
  has_many :list_units
end
