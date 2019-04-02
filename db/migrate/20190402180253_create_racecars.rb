class CreateRacecars < ActiveRecord::Migration[5.2]
  def change
    create_table :racecars do |t|
      t.string :name
      t.string :up
      t.string :down
      t.string :left
      t.string :right

      t.timestamps
    end
  end
end
