class Train < ApplicationRecord
  has_and_belongs_to_many :stations

  validates :departure, presence: true
  validates :destignation, presence: true
  validates :seats, presence: true
end
