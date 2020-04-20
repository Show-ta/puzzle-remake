class NumpreController < ApplicationController
  def index
    @numpre = Numpre.all
  end

  def about
  end


  def create
    @user=User.find_by(id: session[:user_id])
    @numpre=Numpre.new(title: params[:title],
    number1: params[:number1],
    number2: params[:number2],
    number3: params[:number3],
    number4: params[:number4],
    number5: params[:number5],
    number6: params[:number6],
    number7: params[:number7],
    number8: params[:number8],
    number9: params[:number9]

    )
    @numpre.user = @user.id
    @numpre.save
    redirect_to("/numpre/index")
  end

  def new
    
  end

  def show
    @id=params[:id]
    find_numpre()
  end

  def edit
    find_numpre()
  end

  def update
    find_numpre()
    @numpre.update(
    number1: params[:number1],
    number2: params[:number2],
    number3: params[:number3],
    number4: params[:number4],
    number5: params[:number5],
    number6: params[:number6],
    number7: params[:number7],
    number8: params[:number8],
    number9: params[:number9]

    )
    @numpre.save
    redirect_to('/numpre/index')
  end

  def destroy
    find_numpre()
    @numpre.destroy
    redirect_to("/numpre/index")
  end

  def find_numpre
    @numpre = Numpre.find_by(id: params[:id])
  end

 private

  def numpre_data
    params.permit(:title,
    :number1,:number2,:number3,:number4,:number5,:number6,:number7,:number8,:number9)
  end
end
