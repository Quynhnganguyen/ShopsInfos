#lib/tasks/import.rake
require 'csv'
namespace :import_csv do
  task :create_shops => :environment do
  CSV.foreach('shopmium.csv', :headers => true) do |row|
      Shop.create!({
          :chain => row[0],
          :name => row[1],
          :latitude => row[2],
          :longitude => row[3],
          :address => row[4],
          :city => row[5],
          :zip => row[6],
          :phone => row[7],
          :country_code => row[8],
        })
    end
end
end
