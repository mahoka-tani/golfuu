class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :advises
  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :post
  has_many :user_tag3s, dependent: :destroy
  has_many :tag3s, through: :user_tag3s
  has_many :user_tag4s, dependent: :destroy
  has_many :tag4s, through: :user_tag4s
end
