class Diary < ApplicationRecord
  with_options presence: true do
    validates :start_time
    validates :site
  end

  belongs_to :user
  has_one :calendar
  has_one_attached :image

  has_many :workouts, dependent: :destroy
  accepts_nested_attributes_for :workouts, allow_destroy: true

  def self.search(search)
    if search != ""
      Diary.where('site LIKE(?) OR menu LIKE(?) OR nickname LIKE(?)', "%#{search}%","%#{search}%","%#{search}%")
    else
      Diary.all
    end
  end
end
