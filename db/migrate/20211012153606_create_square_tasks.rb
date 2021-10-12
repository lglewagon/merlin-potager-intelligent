class CreateSquareTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :square_tasks do |t|
      t.boolean :done
      t.date :done_date

      t.timestamps
    end
  end
end
