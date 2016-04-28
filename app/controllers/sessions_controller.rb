class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:success] = "Logged in as #{user.email}"
        redirect_to posts_path
      else
        render :new
        return
      end
    else
      render :new
      return
    end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Signed out!"
    redirect_to posts_path
    
  end

end
end
