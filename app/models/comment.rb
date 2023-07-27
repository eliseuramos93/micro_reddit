class Comment < ApplicationRecord
  validates :comment_body, presence: true, length: { minimum: 1 }

  belongs_to :user
  belongs_to :post
end
