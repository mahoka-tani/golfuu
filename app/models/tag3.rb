class Tag3 < ApplicationRecord
    has_many :user_tag3s, dependent: :destroy
    has_many :users, through: :user_tag3s
end
