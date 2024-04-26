class Checkin < ApplicationRecord
  belongs_to :customer
  belongs_to :gym
end
