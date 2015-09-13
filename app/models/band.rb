class Band < ActiveRecord::Base
  has_many :performances
  has_many :venues, through: :performances
end
