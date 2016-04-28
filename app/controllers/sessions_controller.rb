class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:signin][:email])
    if user
      if user.authenticate(params[:signin][:password])
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
  end

  def destroy
    session[:user_id] = nil

    flash[:success] = "You have signed out!"
    redirect_to root_path

  end

end
