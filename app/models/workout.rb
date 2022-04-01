class Workout < ApplicationRecord
  belongs_to :diary

  validates :set, presence:true, numericality: {only_integer:true, message: 'is invalid. Input half-width numbers'}
end
