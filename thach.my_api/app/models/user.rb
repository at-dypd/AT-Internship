class User<ActiveRecord::Base

	before_save :set_password
	before_update :set_comfirm_token

  def set_password
  	self.password = BCrypt::Password.create(password)  
  end

  def set_comfirm_token
  	self.comfirm_token = comfirm_token
  end
end