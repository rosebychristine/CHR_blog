class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :title, :content, presence: true
  # has_many :images, dependent: :destroy
  has_many :likes, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
   end
  
end
