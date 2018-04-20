class Article < ActiveRecord::Base
  #belongs
  belongs_to :user
  
  #has
  has_many :article_categories
  has_many :categories, through: :article_categories
  
  #validates
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 250}
  validates :user_id, presence: true
end
