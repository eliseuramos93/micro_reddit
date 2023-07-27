class User < ApplicationRecord
  validates :user_name, :user_email, presence: true
  validates :user_name, :user_email, uniqueness: true
  validates :user_name, length: { in: 3..20 }

  has_many :posts
end