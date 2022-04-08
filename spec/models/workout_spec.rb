require 'rails_helper'

RSpec.describe Workout, type: :model do
  before do
    @workout = FactoryBot.build(:workout)
  end

  describe '新規記録機能' do
    context '新規記録できる場合' do
      it '全ての入力項目を正しく入力していれば記録できる' do
        expect(@workout).to be_valid
      end
      it 'menuが空でも記録できる' do
        @workout.menu = ''
        expect(@workout).to be_valid
      end
      it 'weightが空でも記録できる' do
        @workout.weight = ''
        expect(@workout).to be_valid
      end
      it 'repが空でも記録できる' do
        @workout.rep = ''
        expect(@workout).to be_valid
      end
    end
    context '新規記録できない場合' do
      it 'setが空では記録できない' do
        @workout.set = ''
        @workout.valid?
        expect(@workout.errors.full_messages).to include "セット数を入力してください"
      end
      it 'setが半角英字では記録できない' do
        @workout.set = 'asc'
        @workout.valid?
        expect(@workout.errors.full_messages).to include "セット数は半角数字で入力してください"
      end
      it 'setが全角数字では記録できない' do
        @workout.set = '１２３'
        @workout.valid?
        expect(@workout.errors.full_messages).to include "セット数は半角数字で入力してください"
      end
      it 'setが全角文字では記録できない' do
        @workout.set = 'あいう'
        @workout.valid?
        expect(@workout.errors.full_messages).to include "セット数は半角数字で入力してください"
      end
      it 'diaryと紐づいていなければ記録できない' do
        @workout.diary = nil
        @workout.valid?
        expect(@workout.errors.full_messages).to include "Diaryを入力してください"
      end
    end
  end
end
