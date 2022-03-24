class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likeables,dependent: :destroy
  has_many :likes,through: :likeables,source: :user

end