class AddAvatarToSponsor < ActiveRecord::Migration
  def change
    change_table :sponsors do |t|
      t.has_attached_file :avatar
    end
  end
end
