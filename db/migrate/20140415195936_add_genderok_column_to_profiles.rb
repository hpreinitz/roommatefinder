class AddGenderokColumnToProfiles < ActiveRecord::Migration
  def change
  	  add_column :profiles, :genderok, :string 
  end
end
