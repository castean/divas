class AddBirthdayToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime  :birthday
    end 
  end
end
