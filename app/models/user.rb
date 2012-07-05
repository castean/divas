class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.logged_in_timeout = 1.day
    c.crypto_provider = Authlogic::CryptoProviders::MD5
  end
  
  attr_accessible :nick, :name, :lastname, :slastname, :phone, :birthday, :email, :login, :password, :avatar, :password_confirmation, :info
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  validates_presence_of :password
  validates_confirmation_of :password
end
