class UsersController < ApplicationController
  def new
    #Rails.logger.info "CSRF Token from session: #{form_authenticity_token}"
    @user = User.new
    
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)    
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
  
end
