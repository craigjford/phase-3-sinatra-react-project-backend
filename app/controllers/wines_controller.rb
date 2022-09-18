class WinesController < ApplicationController

    get '/wines' do
        wines = Wine.all
        wines.to_json
    end 

    # post '/wines' do
    # # post 'vineyards/:vineyard_id/wines' do 
    #     # vinyard = Vineyard.find_by(id: params[:vineyard_id])
    #     # wine = Vinyard.wines.create(params)
    #     wine = Wine.create(params)
    #     wine.to_json
    # end


    post '/wines' do
        wine = Wine.create(name: params[:name], price: params[:price],
                vineyard_id: params[:vineyard_id], year: params[:year])
        wine.to_json
    end

    # delete '/wines/:id' do
    #     wine = Wine.find_by(params[:id])
    #     wine.destroy
    # end

    # patch '/wines/:id' do
    #     wine = Wine.find_by(params[:id])
    #     wine.update(name: params[:name], price: params[:price])  
    #     wine.to_json
    # end

end