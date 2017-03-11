class Track < ApplicationRecord
  has_many :users
  has_many :sections
end
