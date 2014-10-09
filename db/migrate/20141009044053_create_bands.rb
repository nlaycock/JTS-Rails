class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.string :country
      t.string :state
      t.string :city
      t.string :contact_email
      t.integer :user_id
      t.timestamps
    end
  end
end
