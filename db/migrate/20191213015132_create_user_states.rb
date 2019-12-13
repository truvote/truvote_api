class CreateUserStates < ActiveRecord::Migration[5.2]
  def change
    create_table :user_states do |t|
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.string :role
      t.integer :district_id

      t.timestamps
    end
  end
end
