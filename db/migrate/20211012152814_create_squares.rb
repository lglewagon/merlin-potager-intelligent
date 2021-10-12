class CreateSquares < ActiveRecord::Migration[6.0]
  def change
    create_table :squares do |t|
      t.integer :length
      t.integer :width
      t.date :planting_date
      t.date :harvest_date

      t.timestamps
    end
  end
end
