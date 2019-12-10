class Tag2 < ApplicationRecord
    has_many :post_tag2s, dependent: :destroy
    has_many :posts, through: :post_tag2s
end
