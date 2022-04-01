class Diary < ApplicationRecord
  with_options presence: true do
    validates :date
    validates :site
  end

  has_one_attached :image
  
  has_many :workouts, dependent: :destroy
  accepts_nested_attributes_for :workouts, allow_destroy: true
end
