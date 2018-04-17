class User < ActiveRecord::Base
  has_many :comments
  
  #Validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  
  validates :username, presence: true, uniqueness: {case_sensitive: false }, length: {minimum: 3, maximum: 25}
  validates :email,    presence: true, uniqueness: {case_sensitive: false }, length: {maximum: 35}, format: { with: VALID_EMAIL_REGEX }
end
