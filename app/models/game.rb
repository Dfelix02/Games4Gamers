class Game < ApplicationRecord
  belongs_to :Test
  has_many :Question
  has_many :Content

end
