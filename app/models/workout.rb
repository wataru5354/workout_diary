class Workout < ApplicationRecord
  belongs_to :diary

  validates :set, presence:true
end
