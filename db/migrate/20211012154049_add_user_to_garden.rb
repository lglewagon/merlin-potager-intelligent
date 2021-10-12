class AddUserToGarden < ActiveRecord::Migration[6.0]
  def change
    add_reference :gardens, :users, index: true
  end
end
