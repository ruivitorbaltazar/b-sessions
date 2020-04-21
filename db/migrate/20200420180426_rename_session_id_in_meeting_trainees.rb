class RenameSessionIdInMeetingTrainees < ActiveRecord::Migration[5.2]
  def change
    rename_column :meeting_trainees, :session_id, :meeting_id
  end
end
