class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :question_id
      t.integer :content_id
      t.belongs_to :Test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
