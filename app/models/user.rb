class User < ActiveRecord::Base
  attr_accessible :addres, :email, :name, :password, :password_confirmation,
  has_secured_password
  def password(password)
    
  end
end
