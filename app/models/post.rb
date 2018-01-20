class Post < ApplicationRecord
  belongs_to :user
  validates_associated :user
  validates :title, :body, presence: true
end
