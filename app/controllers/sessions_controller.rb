class SessionsController < ApplicationController
  # GET /login
  def new
  end

  # POST /login
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      head :created
    else
      render json: { "Invalid email/password combination" }
    end  
  end

  # DELETE /login
  def destroy
    log_out
  end
end
