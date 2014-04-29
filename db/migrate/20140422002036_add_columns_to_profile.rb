class AddColumnsToProfile < ActiveRecord::Migration
  def change
  	  add_column :profiles, :firstname, :string
      add_column :profiles, :lastname, :string
      add_column :profiles, :password, :string
      add_column :profiles, :birthdate, :string
      add_column :profiles, :gender, :string
      add_column :profiles, :bio, :string
      add_column :profiles, :interests, :string
      
      add_column :profiles, :petsok, :string
      add_column :profiles, :gendermaleok, :string 
      add_column :profiles, :genderfemaleok, :string 
      add_column :profiles, :gendertransgenderok, :string 
      add_column :profiles, :gendernotspecifiedok, :string 
  end
end
