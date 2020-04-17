class CreateTrainees < ActiveRecord::Migration[5.2]
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
