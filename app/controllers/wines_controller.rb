class WinesController < ApplicationController
    
    get '/wines' do
        wines = Wine.all
        wines.to_json
    end 

end