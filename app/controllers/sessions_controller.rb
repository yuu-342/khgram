class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by!(email: session_params[:email])

    if @user.authenticate(session_params[:password])
      sign_in
      redirect_to root_path
    else
      flash.now[:alart] = 'パスワードが正しくありません'
      render :new
    end
  rescue ActiveRecord::RecordNotFound => e
    flash.now[:alart] = e.message
    render :new
  end

  def destroy
  end
end
