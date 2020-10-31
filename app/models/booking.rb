class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cohemp
  # COHEMPS_STATUS = ["solicitado", "confirmado", "cancelado"]
  #DATE_REGEX = "/^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$/"
  validates :status, presence: true
  # , inclusion: { in: COHEMPS_STATUS, message: "Incorrect status" }
  #validates :date, presence: true, format: { with: DATE_REGEX, message: "inserir uma data por favor"}
  validates_uniqueness_of :date, scope: :cohemp
end
