class CreateReleaseTypes < ActiveRecord::Migration
  def change
    create_table :release_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
