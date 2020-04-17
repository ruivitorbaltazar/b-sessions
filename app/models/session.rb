class Session < ApplicationRecord
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  has_many :trainees, dependent: :destroy

  def start_time
      self.start_date
  end

  def end_time
      self.end_date
  end
end
