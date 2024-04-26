class Address < ApplicationRecord
  belongs_to :neighbor
  belongs_to :addressable, polymorphic: true
end
