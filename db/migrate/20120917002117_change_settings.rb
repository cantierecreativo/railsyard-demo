class ChangeSettings < ActiveRecord::Migration
  def up
    change_table :settings do |t|
      t.remove :footer

      t.string :site_name

      t.text :home_banner_text
      t.text :home_text

      t.text :about_text

      t.text :contact_text

      t.string :contact_address
      t.string :contact_phone
      t.string :contact_fax
      t.string :contact_email
      t.float :contact_latitude
      t.float :contact_longitude
    end
  end

  def down
    change_table :settings do |t|
      t.text :footer
      t.remove :site_name, :home_banner_text, :home_text, :about_text, :contact_text, :contact_address, :contact_phone, :contact_fax, :contact_email, :contact_latitude, :contact_longitude
    end
  end
end
