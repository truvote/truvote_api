module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :edit, :update, :destroy]
    
      # GET /users
      # GET /users.json
      def index
        render json: User.all
      end
    
      # GET /users/1
      # GET /users/1.json
      def show
        render json: @user
      end
        
      # POST /users
      # POST /users.json
      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :ok
        else
          render json: { status: 501 }
        end
      end
    
      # PATCH/PUT /users/1
      # PATCH/PUT /users/1.json
      def update
        if @user.update(user_params)
          render json: @user, status: :ok
        else
          render json: { status: 501 }
        end
      end
    
      # DELETE /users/1
      # DELETE /users/1.json
      def destroy
        if @user.destroy
          render json: { status: 200 }
        else
          render json: { status: 501 }
        end
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params
          params.require(:user).permit(:first_name, :last_name, :email, :password)
        end
    end    
  end
end
