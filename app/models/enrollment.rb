class Enrollment < ApplicationRecord
  belongs_to :plan
  belongs_to :customer
end
