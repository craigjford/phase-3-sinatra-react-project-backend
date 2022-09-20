class WinesController < ApplicationController

    get '/wines' do
        wines = Wine.all
        wines.to_json
    end 

    post '/wines' do
        wine = Wine.create(name: params[:name], price: params[:price],
                vineyard_id: params[:vineyard_id], year: params[:year])
        wine.to_json
    end

    delete '/wines/:id' do
        wine = Wine.find(params[:id])
        wine.destroy
        wine.to_json   
    end

    patch '/wines/:id' do
        wine = Wine.find_by(params[:id])
        wine.update(name: params[:name], price: params[:price], year: params[:year])  
        wine.to_json
    end

end