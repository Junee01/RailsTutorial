class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      log_in @user #회원가입 후 바로 로그인
  		flash[:success] = "성공적으로 회원가입이 되었습니다."
  		redirect_to @user #redirect_to user_url(@user)와 같은 의미이다.
  	else
  		render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private

  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end