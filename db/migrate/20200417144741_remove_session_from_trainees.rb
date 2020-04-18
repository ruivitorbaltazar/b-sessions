class RemoveSessionFromTrainees < ActiveRecord::Migration[5.2]
  def change
    remove_reference :trainees, :session, foreign_key: true
  end
end
