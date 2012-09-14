namespace :db do

  desc "delete all records"
  task :clear => :environment do
    Artist.destroy_all
    Genre.destroy_all
    Release.destroy_all
    ReleaseType.destroy_all
    Settings.destroy_all
  end

end
