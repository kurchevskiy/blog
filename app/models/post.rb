class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  validates_associated :user
  validates :title, :body, presence: true
end
