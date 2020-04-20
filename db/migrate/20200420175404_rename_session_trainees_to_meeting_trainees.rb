class RenameSessionTraineesToMeetingTrainees < ActiveRecord::Migration[5.2]
  def change
    rename_table :session_trainees, :meeting_trainees
  end
end
