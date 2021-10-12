class AddGardenAndPlantToSquare < ActiveRecord::Migration[6.0]
  def change
    add_reference :squares, :gardens, index: true
    add_reference :squares, :plants, index: true
  end
end
