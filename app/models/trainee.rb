class Trainee < ApplicationRecord
  has_many :meeting_trainees
  has_many :meetings, through: :meeting_trainees
end
