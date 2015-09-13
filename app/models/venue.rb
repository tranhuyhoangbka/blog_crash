class Venue < ActiveRecord::Base
  has_many :performances
  has_many :bands, through: :performances
end
