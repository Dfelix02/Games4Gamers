class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :description
      t.string :videos
      t.string :music
      t.string :facts
      t.string :images
      t.belongs_to :Game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
