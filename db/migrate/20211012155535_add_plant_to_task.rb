class AddPlantToTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :plants, index: true
  end
end
