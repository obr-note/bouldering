class SessionsController < ApplicationController
  
  def create
    user = User.find_by(name: params[:session][:name])
    password = User.find_by(password)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id #ログイン処理 app/helpers/sessions_helper.rbにメソッドを定義
      flash[:success] = "ログインに成功しました"
      redirect_to root_url
    else
      flash.now[:danger] = "ログインに失敗しました"
      render :new
    end
  end

  def destroy
    log_out #ログアウト処理 app/helpers/sessions_helper.rbにメソッドを定義
    redirect_to root_url
  end

end