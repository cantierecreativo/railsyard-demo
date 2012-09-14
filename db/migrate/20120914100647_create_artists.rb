class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :biography
      t.string :country
      t.string :homepage_url

      t.timestamps
    end
  end
end
