class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by!(email: session_params[:email])

    if @user.authenticate(session_params[:password])
      sign_in(@user)
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
    sign_out
    redirect_to login_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
