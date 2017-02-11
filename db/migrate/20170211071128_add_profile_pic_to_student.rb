class AddProfilePicToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :profile_image, :string
  end
end
