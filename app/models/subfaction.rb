class Subfaction < ApplicationRecord
  belongs_to :faction
  has_many :lists
  has_many :units
end
