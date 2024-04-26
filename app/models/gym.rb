class Gym < ApplicationRecord
    belongs_to :admin
    has_many :addresses, as: :addressable
end
