class Examination < ApplicationRecord
  belongs_to :instructor
  belongs_to :customer
end
