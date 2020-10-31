class Cohemp < ApplicationRecord
  belongs_to :user
  validates :address, presence: true
  validates :description, presence: true
  validates :availability, presence: true, :inclusion => { :in => [true, false] }
end
