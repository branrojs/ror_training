class User < ActiveRecord::Base
  #has
  has_many :comments
  has_many :articles, dependent: :destroy
  
  #before-save
  before_save { self.email = email.downcase }  #turn into lowercase all the email
  
  #Validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  
  validates :username, presence: true, uniqueness: {case_sensitive: false }, length: {minimum: 3, maximum: 25}
  validates :email,    presence: true, uniqueness: {case_sensitive: false }, length: {maximum: 35}, format: { with: VALID_EMAIL_REGEX }
  
  has_secure_password
end
