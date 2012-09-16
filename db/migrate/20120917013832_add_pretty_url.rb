class AddPrettyUrl < ActiveRecord::Migration
  def change
    add_column :release_types, :pretty_url, :string
    add_column :artists, :pretty_url, :string
  end
end
