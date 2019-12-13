class CreateBillVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_votes do |t|
      t.integer :bill_id
      t.integer :user_state_id
      t.boolean :thumbs_up

      t.timestamps
    end
  end
end
