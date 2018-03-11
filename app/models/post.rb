class Post < ApplicationRecord
	#This validates presence of title, and makes sure that the length is not more than 140 words
  validates :title, presence: true, length: {maximum: 140}
  #This validates presence of body
  validates :content, presence: true
  #This validates presence of author
  validates :author, presence: true
end
