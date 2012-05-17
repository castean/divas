class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :tittle
      t.text :info
      t.date :devent

      t.timestamps
    end
  end
end
