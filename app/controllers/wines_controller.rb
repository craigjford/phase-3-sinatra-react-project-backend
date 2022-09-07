class WinesController < ApplicationController
    
    get '/wines' do
        wines = Wine.all
        wines.to_json
    end 

    post '/wines' do
        wine = Wine.create(name: params(:name), price: params(:price), vineyard_id(params(:id), year: params(:year)))
        wine.to_json
    end

end