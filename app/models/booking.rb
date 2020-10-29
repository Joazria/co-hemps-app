class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cohemp
  COHEMPS_STATUS = ["available", "canceled", "confirmed"]
  DATE_REGEX = /^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$/
  validates :status, presence: true, inclusion: { in: COHEMP_STATUS, message: "Incorrect status" }
  validates :date, presence: true, format: { with: DATE_REGEX, message: "please enter keywords in correct format"}
end
