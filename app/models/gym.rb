class Gym < ApplicationRecord
    belongs_to :admin
    has_many :recepcionists
    has_many :instructors
    has_many :addresses, as: :addressable
end
