class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.integer :length
      t.integer :width
      t.integer :width_in_squares
      t.integer :length_in_squares
      t.integer :width_in_cm
      t.integer :length_in_cm
      t.float :latitude
      t.float :longitude
      t.string :address
      t.integer :shoe_size

      t.timestamps
    end
  end
end
