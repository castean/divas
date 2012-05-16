class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :route
      t.text :info

      t.timestamps
    end
  end
end
