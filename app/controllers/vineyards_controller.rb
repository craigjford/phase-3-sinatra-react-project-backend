class VineyardsController < ApplicationController
 
    get '/vineyards' do
        vineyards = Vineyard.all
        vineyards.to_json
    end    
    
end