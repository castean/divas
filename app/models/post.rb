class Post < ActiveRecord::Base
  attr_accessible :date, :owner, :post, :tittle, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "215x178>" }
  has_many :comments
end
