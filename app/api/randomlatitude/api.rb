require 'grape'
require 'securerandom'

module Randomlatitude

  class API < Grape::API
    format :json
    version 'v1', :using => :path

    resource :generate do

      ###########################################################################
      ###########################################################################
      # Method: get
      # url: /v1/generate/location
      # params: count : integer      
      ###########################################################################
      ###########################################################################
      get "location/:count" do
        response_array = Array.new
		if params[:count]
		  response_array = Location.get_random_location(params[:count])
		else
		  response_array =  "ID parameter not avaialble"
		end
		response_array
      end
	end
  end
end
