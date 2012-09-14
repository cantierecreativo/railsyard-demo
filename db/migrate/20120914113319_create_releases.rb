class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.references :release_type
      t.references :genre
      t.date :release_date
      t.string :barcode
      t.text :tracklist
      t.boolean :published
      t.string :artwork_artist

      t.timestamps
    end
    add_index :releases, :release_type_id
    add_index :releases, :genre_id
  end
end
