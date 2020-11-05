class Cohemp < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :availability, presence: true, :inclusion => { :in => [true, false] }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
end
