class Post < ActiveRecord::Base
  validates :title, :body, presence: true
  has_many :comments, dependent: :destroy
end
