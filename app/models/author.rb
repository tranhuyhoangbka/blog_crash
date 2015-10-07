class Author < ActiveRecord::Base
  validates :api_token, presence: true, uniqueness: true
  before_validation :generate_api_token

  has_and_belongs_to_many :books
  has_many :posts, dependent: :destroy

  private

  def generate_api_token
    return if api_token.present?

    loop do
      self.api_token = SecureRandom.hex
      break unless Author.exists? api_token: api_token
    end
  end
end
