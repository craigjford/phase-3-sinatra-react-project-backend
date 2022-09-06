class VineyardsController < ApplicationController
 
    get '/vineyards' do
        vineyards = Vineyard.all
        vineyards.to_json(include: :wines) 
    end    

    get '/vineyards/:id' do
        vineyards = Vineyard.find(params[:id])
        if vineyards
            vineyards.to_json(include: :wines)
        else
            '404 - Vineyard not found'
        end    
    end    

end