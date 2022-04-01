class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :menu
      t.string :weight
      t.string :rep
      t.string :set,       null: false
      t.references :diary, null: false, forign_key: true
      t.timestamps
    end
  end
end
