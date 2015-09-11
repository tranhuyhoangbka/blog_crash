class Comment < ActiveRecord::Base
  validates :author, :body, presence: true
  belongs_to :post
end
