class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :name
      t.text :post
      t.has_attached_file :image

      t.timestamps
    end
  end
end
