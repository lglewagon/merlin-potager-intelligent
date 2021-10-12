class AddPlantToAssociation < ActiveRecord::Migration[6.0]
  def change
    add_reference :associations, :plants, index: true
  end
end
