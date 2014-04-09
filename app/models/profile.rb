class Profile < ActiveRecord::Base
	validates :firstname, presence: true, length: {minimum: 1}
	validates :lastname, presence: true, length: {minimum: 1}
	validates :password, confirmation: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end

