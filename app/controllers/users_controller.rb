class UsersController < ApplicationController
  def new
    @user = User.new
    @user.name = params[:name]
    @user.password = params[:password]
    @user.save
    session[:user_id]=@user.id
    flash[:notice]="登録完了しました"
  
    
  end

  def move
    redirect_to numpre_index_path
  end

  def login_form
  end

  def login
    #()のなかにある条件に適合するユーザーを探し、あれば＠userに代入する
    @user=User.find_by(name: params[:name],password: params[:password])

    if @user
      session[:user_id] = @user.id
      flash[:notice] ="ログインしました"
      redirect_to("/numpre/index")

    else
      @error_message="ユーザー名またはパスワードが間違っています"
      render("users/login_form")
    end
  end

  def logout
    #セッションを空にする
    session[:user_id] = nil
    #
    flash[:notice] = "ログアウトしました"
    redirect_to("/numpre/index")
  end


  def show
  end
end
