class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :diaries
  has_many :calendars
  with_options presence: true do
    validates :nickname
    validates :first_name, format: { with: /\A[ぁ-んァ-ヶー-龥々ー]+\z/.freeze, message: 'は全角文字で入力してください' }
    validates :last_name, format: { with: /\A[ぁ-んァ-ヶー-龥々ー]+\z/.freeze, message: 'は全角文字で入力してください' }
    validates :first_name_kana,
              format: { with: /\A[ァ-ヶー－]+\z/.freeze, message: 'は全角文字のカタカナで入力してください' }
    validates :last_name_kana,
              format: { with: /\A[ァ-ヶー－]+\z/.freeze, message: 'は全角文字のカタカナで入力してください' }
    validates :birthday
  end

  validates :password,
            format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze, message: 'は半角英数字を混合して入力してください' }
end
