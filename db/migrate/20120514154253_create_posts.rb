class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tittle
      t.text :post
      t.string :owner
      t.date :date

      t.timestamps
    end
  end
end
