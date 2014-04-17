class AddGenderTypeOkColumnToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :gendermaleok, :string 
  	add_column :profiles, :genderfemaleok, :string 
  	add_column :profiles, :gendertransgenderok, :string 
  	add_column :profiles, :gendernotspecifiedok, :string 
  end
end
