class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :true_answer_id
      t.belongs_to :Game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
