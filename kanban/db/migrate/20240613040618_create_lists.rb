class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :title, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
