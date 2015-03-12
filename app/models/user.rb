class User < ActiveRecord::Base
	validates :name, :email, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: { with: VALID_EMAIL_REGEX }
	validates :email, uniqueness: true
end
