class AddCalendarToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at


    end
  end

  def self.down
    drop_table :events
  end
end
