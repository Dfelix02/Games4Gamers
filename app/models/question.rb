class Question < ApplicationRecord
  belongs_to :Game
  has_many :Answers
end
