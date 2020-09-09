class CreateTestScores < ActiveRecord::Migration[6.0]
  def change
    create_table :test_scores do |t|
      t.belongs_to :User, null: false, foreign_key: true
      t.belongs_to :Test, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
