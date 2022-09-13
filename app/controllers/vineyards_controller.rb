class VineyardsController < ApplicationController
 
    get '/vineyards' do
        vineyards = Vineyard.all
        vineyards.to_json
    end    

    get '/vineyards/:id' do
        vineyards = Vineyard.find(params[:id])
        if vineyards
            vineyards.to_json(include: :wines)
        else
            '404 - Vineyard not found'
        end    
    end    

    post 'vineyards' do
        vineyard = Vineyard.create(name: params[:name], address: params[:address],
                city: params[:city], state: params[:state], image_url: params[:image_url])
         vineyards.to_json       
    end

end