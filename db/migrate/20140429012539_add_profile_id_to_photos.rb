class AddProfileIdToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :profile_id, index: true
  end
end
