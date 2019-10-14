class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.references :note, foreign_key: true
      t.string :priority
      t.string :location
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
