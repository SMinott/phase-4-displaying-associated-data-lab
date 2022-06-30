class UsersController < ApplicationController

    # has_many :items

    #Get /users/:id
    def show
        users = User.find_by(id: params[:id] )
        render json: users, include: :items
    end

end
