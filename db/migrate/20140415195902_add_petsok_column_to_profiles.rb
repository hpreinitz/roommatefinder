class AddPetsokColumnToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :petsok, :string 
  end
end
