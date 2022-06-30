class ItemsController < ApplicationController
    # belongs_to :user
    
    #Get /items
    def index
        item = Item.all
        render json: item, include: :user
    end
end
