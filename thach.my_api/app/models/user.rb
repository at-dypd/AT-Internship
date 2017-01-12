class User<ActiveRecord::Base

	before_save :set_password

  def set_password   
  	self.password = BCrypt::Password.create(password)  
  end
end