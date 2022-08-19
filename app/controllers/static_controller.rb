class StaticController < ApplicationController
    def home
        render json: { status: "It's working"}
    end

    def index
        @user = User.all
        render json: {status: :listed, user: @user}
    end
    
end