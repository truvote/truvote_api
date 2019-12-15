class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :body
      t.string :title
      t.string :history
      t.date :voting_date
      t.string :status
      t.string :website
      t.string :pros
      t.string :cons
      t.integer :user

      t.timestamps
    end
  end
end
