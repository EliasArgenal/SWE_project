class User < ApplicationRecord
  has_secure_password

  has_many :forum_posts
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, confirmation: true
  validates :password_confirmation, presence: true
end
