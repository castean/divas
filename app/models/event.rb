class Event < ActiveRecord::Base
  has_event_calendar
  attr_accessible :name, :info, :start_at, :end_at
  # To specify the columns to use call it like this:
  # 
  # has_event_calendar :start_at_field  => 'custom_start_at', :end_at_field => 'custom_end_at'
  # 

end
