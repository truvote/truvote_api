class CreateRepresentativeProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :representative_profiles do |t|
      t.integer :user_state_id

      t.timestamps
    end
  end
end
