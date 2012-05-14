class AddAvatarToPost < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.has_attached_file :avatar
    end
  end
end
