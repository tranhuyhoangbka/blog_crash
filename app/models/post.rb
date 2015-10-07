class Post < ActiveRecord::Base
  validates :title, :body, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :author

  # def as_json(options={})
  #   super(only: [:id, :title], methods: :test)
  # end

  # def test
  #   title.truncate 10
  # end
end
