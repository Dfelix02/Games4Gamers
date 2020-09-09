class TestScore < ApplicationRecord
  belongs_to :User
  belongs_to :Test
end
