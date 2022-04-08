require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '新規記録機能' do
    context '新規記録できる場合' do
      it '全ての入力項目を正しく入力していれば記録できる' do
        expect(@diary).to be_valid
      end
      it 'imageが空でも記録できる' do
        @diary.image = nil
        expect(@diary).to be_valid
      end
    end
    context '新規記録できない場合' do
      it '記録日が空では記録できない' do
        @diary.start_time = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include "日付を入力してください"
      end
      it '部位が空では記録できない' do
        @diary.site = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include "部位を入力してください"
      end
      it 'userと紐づいていなければ記録できない' do
        @diary.user = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include 'Userを入力してください'
      end
    end
  end
end
