class CreateProductifyTasks < ActiveRecord::Migration
  def change
    create_table :productify_tasks do |t|
      t.string :content
      t.references :productify_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
