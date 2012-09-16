class Settings < ActiveRecord::Base
  attr_accessible :site_name, :home_banner_text, :home_text, :about_text, :contact_text, :contact_address, :contact_phone, :contact_fax, :contact_email, :contact_latitude, :contact_longitude

  def self.instance
    if self.count.zero?
      self.create
    end
    self.first
  end
end
