class UsersController < ApplicationController
  
  def new
    @user = User.new #空のインスタンスを生成
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "ユーザを登録しました"
      redirect_to root_path
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end