class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :delay_after_creation
      t.text :description

      t.timestamps
    end
  end
end
