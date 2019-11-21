class Review < ApplicationRecord
  belongs_to :plane
  validates :content, presence: true
  validates :rating, presence: true
end
