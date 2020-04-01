class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, :content, presence: true
  has_many :images, dependent: :destroy

  belongs_to :user
end
