class User < ActiveRecord::Base
	# has_secure_password

	# def password
	# 	self.password
	# end
	before_save :set_password 

	def set_password
		self.password = BCrypt::Password.create(password)  
	end
end
