class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.date :birthdate
      t.string :gender
      t.text :bio
      t.text :interests

      t.timestamps
    end
  end
end
