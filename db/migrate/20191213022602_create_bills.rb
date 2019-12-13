class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :body
      t.string :title
      t.string :history
      t.string :email
      t.date :voting_date
      t.string :status
      t.string :website

      t.timestamps
    end
  end
end
