class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.references :planning, foreign_key: true
      t.references :user, foreign_key: true
      t.date :start_date

      t.timestamps
    end
  end
end
