class Review < ApplicationRecord
  validates :title, :image, :genre, :comment, presence: true
  belongs_to :user
end
