class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :title, null: false, limit: 255
      t.string :memo, null: false, limit: 1000
      t.references :list, null: false, foreign_key: true
      t.timestamps
    end
  end
end
