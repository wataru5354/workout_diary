class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.datetime :start_time,       null: :false
      t.string :site,               null: :false
      t.references :user,           null: false, forign_key: true
      t.timestamps
    end
  end
end
