class Workout < ApplicationRecord
  belongs_to :diary

  validates :set, presence: true, numericality: { only_integer: true, message: 'は半角数字で入力してください' }
end
