class Train < ApplicationRecord
  validates :departure, presence: true
  validates :destignation, presence: true
  validates :seats, presence: true
end
