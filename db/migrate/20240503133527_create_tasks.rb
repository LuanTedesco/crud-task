class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :finished, default: false

      t.timestamps
    end
  end
end
