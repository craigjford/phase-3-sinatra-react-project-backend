class WinesController < ApplicationController


    post '/vineyards/:vineyard_id/wines' do
        vineyard = Vineyard.find(params[:vineyard_id])
        wine = vineyard.wines.create(name: params[:name], price: params[:price],
                 year: params[:year])
        wine.to_json
    end

    delete '/wines/:id' do
        wine = Wine.find(params[:id])
        wine.destroy 
    end

    patch '/wines/:id' do
        wine = Wine.find(params[:id])
        wine.update(name: params[:name], price: params[:price], year: params[:year])  
        wine.to_json
    end

end