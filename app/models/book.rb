class Book < ApplicationRecord
  
  belongs_to :user
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  
  validates :title, presence: true
  validates :body, presence: true
  validates :body, length: { maximum: 200}
  
end
