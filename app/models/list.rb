class List < ApplicationRecord
  belongs_to :user
  belongs_to :subfaction
  has_many :list_units, dependent: :destroy
  has_many :comments, dependent: :destroy
end
