class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :routes
      t.has_attached_file :avatar
      
      t.timestamps
    end
  end
end
