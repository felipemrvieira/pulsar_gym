class Subscription < ApplicationRecord
  belongs_to :gym
  belongs_to :subscription_plan
end
