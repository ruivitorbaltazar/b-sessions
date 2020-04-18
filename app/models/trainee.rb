class Trainee < ApplicationRecord
  has_many :session_trainees
  has_many :sessions, through: :session_trainees
end
