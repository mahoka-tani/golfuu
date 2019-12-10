class Tag4 < ApplicationRecord
    has_many :user_tag4s, dependent: :destroy
    has_many :users, through: :user_tag4s
end
