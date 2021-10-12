class CreateAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :associations do |t|
      t.integer :associations_quality

      t.timestamps
    end
  end
end
