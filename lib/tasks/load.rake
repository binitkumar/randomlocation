namespace :db do
  task :load_location => :environment do
    puts "Resetting locations..."
    Location.delete_all

    1000.times do |count|
	  Location.create(
	    :pin=>(rand() * 1000000 ).to_i,
		:latitude=> (180.000) * rand(),
		:longitude=> (180.000) * rand(),
		:data_type=> rand(2) + 1
	  )
	end
  end
end