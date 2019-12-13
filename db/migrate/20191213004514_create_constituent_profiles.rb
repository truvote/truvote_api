class CreateConstituentProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :constituent_profiles do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
