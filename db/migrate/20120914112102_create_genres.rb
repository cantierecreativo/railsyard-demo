class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.integer :parent_id
      t.integer :position

      t.timestamps
    end
    add_index :genres, :parent_id
  end
end
