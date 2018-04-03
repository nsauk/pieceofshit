class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(session_params[:email])
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:error] = "Something was wrong with your credentials."
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/login'
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
