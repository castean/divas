class AddOrderToPages < ActiveRecord::Migration
  def change
      change_table :pages do |t|
      t.string :ordenp
    end
  end
end
