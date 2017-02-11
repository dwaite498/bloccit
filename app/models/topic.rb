class Topic < ActiveRecord::Base
    has_many :sponsored_post
    has_many :posts, dependent: :destroy
end
