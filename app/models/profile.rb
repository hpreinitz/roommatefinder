require 'devise'

class Profile < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #has_many :photos, dependent: :destroy
  acts_as_taggable
  #acts_as_taggable_on :interests
end

