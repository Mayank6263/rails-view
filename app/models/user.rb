class User < ApplicationRecord
	has_secure_password
	devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
	validates :name, presence: true
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true 
	validates :password, presence: true

end
