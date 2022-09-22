class Vineyard < ActiveRecord::Base

    has_many :wines, dependent: :destroy
    
end