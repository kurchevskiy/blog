class User < ApplicationRecord
  has_many :posts
  validates :email, uniqueness: true, length: {minimum: 3}
  validates :name, uniqueness: true, length: {in: 6..50}
end
