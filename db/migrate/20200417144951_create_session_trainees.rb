class CreateSessionTrainees < ActiveRecord::Migration[5.2]
  def change
    create_table :session_trainees do |t|
      t.references :session, foreign_key: true
      t.references :trainee, foreign_key: true

      t.timestamps
    end
  end
end
