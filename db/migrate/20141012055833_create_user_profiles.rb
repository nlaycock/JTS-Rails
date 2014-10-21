class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :state
      t.string :city
      t.string :preferred_email
      t.string :about_me
      t.date :dob

      t.timestamps
    end
  end
end
