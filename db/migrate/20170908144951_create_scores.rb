class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :name
      t.string :time
      t.integer :challengeboard_id, :null => false

      t.timestamps
    end
  end
end
