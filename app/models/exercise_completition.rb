class ExerciseCompletition < ApplicationRecord
  belongs_to :checkin
  belongs_to :exercise
end
