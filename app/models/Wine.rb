class Wine < ActiveRecord::Base
    belongs_to :vineyard

    delete '/wines/:id' do
        wine = Wine.find(params[:id])
        wine.destroy
        wine.to_json   
    end 
    
end