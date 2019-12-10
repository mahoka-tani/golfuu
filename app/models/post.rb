class Post < ApplicationRecord
    mount_uploader :image, ImageUploader    
    mount_uploader :video, VideoUploader

    belongs_to :user
    has_many :advises
    has_many :post_tags, dependent: :destroy
    has_many :tags, through: :post_tags
    has_many :post_tag2s, dependent: :destroy
    has_many :tag2s, through: :post_tag2s
    has_many :favorites

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
