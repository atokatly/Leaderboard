class AddImageToScores < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :photo, :string
  end
end
