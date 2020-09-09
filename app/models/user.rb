class User < ApplicationRecord
    has_many :Testscores
    has_many :Tests, through: :TestScores

    validates :username, presence: true, uniqueness: true
    has_secure_password

    
end
