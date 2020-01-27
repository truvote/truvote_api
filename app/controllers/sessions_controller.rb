class SessionsController < ApplicationController
  # GET /login
  def new
  end

  # POST /login
  def create
    user = User.find_by(email: session_params[:email].downcase)
    if user && user.authenticate(session_params[:password])
      log_in user
      head :created
    else
      render json: { errors: user.errors }
    end  
  end

  # DELETE /login
  def destroy
    log_out
  end

  private

  # whitelist params from the scary internet
  def session_params
    params.require(:session).permit(:email,:password)
  end
end
