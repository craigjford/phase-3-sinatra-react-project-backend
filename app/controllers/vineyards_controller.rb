class VineyardsController < ApplicationController
 
    get '/vineyards' do
        vineyards = Vineyard.all
        vineyards.to_json(include: :wines)
    end      

    delete '/vineyards/:id' do
        vineyard = Vineyard.find(params[:id])
        vineyard.destroy
        vineyard.to_json   
    end  

    post '/vineyards' do
        vineyard = Vineyard.create(name: params[:name], address: params[:address],
                city: params[:city], state: params[:state], image_url: params[:image_url])
         vineyard.to_json       
    end

end