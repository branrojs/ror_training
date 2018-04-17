class Article < ActiveRecord::Base
  #belongs
  belongs_to :user
  
  #validates
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 250}
  validates :user_id, presence: true
end
