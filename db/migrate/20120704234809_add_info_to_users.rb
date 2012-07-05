class AddInfoToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :info
    end
  end
end
