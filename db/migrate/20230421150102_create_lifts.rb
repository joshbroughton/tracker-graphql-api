class CreateLifts < ActiveRecord::Migration[7.0]
  def change
    create_table :lifts do |t|
      t.string :user_id, null: false
      t.string :lift_type
      t.integer :reps
      t.float :weight
      t.datetime :date_lifted

      t.timestamps
    end
  end
end
