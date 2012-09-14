class CreateArtistsReleases < ActiveRecord::Migration
  def change
    create_table :artists_releases do |t|
      t.references :artist
      t.references :release
    end
    add_index :artists_releases, :artist_id
    add_index :artists_releases, :release_id
  end
end
