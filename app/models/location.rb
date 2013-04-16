class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :pin, :data_type
  
  def self.get_random_location(count)
    find(:all).sample(count.to_i)
  end
end
