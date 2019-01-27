class User < ApplicationRecord
  has_many :posts
  has_many :comments
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: {minimum: 6, maximum: 36},
            uniqueness: true
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX}
end
