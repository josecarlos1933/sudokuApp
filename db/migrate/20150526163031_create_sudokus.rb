class CreateSudokus < ActiveRecord::Migration
  def change
    create_table :sudokus do |t|
      t.string :difficulty
      t.string :time
      t.string :solution
      t.integer :player_id

      t.timestamps null: false
    end
  end
end
