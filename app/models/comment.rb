class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_associated :user, :post
end
