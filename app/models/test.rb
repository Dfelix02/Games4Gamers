class Test < ApplicationRecord
    has_many :Games
    has_many :Testscores
    has_many :Users, through: :TestScores

end
