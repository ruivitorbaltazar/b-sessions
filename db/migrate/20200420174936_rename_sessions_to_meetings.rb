class RenameSessionsToMeetings < ActiveRecord::Migration[5.2]
  def change
    rename_table :sessions, :meetings
  end
end
