class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :image, ImageUploader    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  has_many :posts, dependent: :destroy
  has_many :advises
  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :post
  has_many :user_tag3s, dependent: :destroy
  has_many :tag3s, through: :user_tag3s
  has_many :user_tag4s, dependent: :destroy
  has_many :tag4s, through: :user_tag4s

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        name:  auth.info.name,
        password: Devise.friendly_token[0, 20],
        image:  auth.info.image
      )
    end

    user
  end

end
