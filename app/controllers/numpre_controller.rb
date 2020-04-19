class NumpreController < ApplicationController
  def index
    @numpre = Numpre.all
  end

  def about
  end


  def create
    @numpre=Numpre.new(title: params[:titlee],
    number1: params[:number1],
    number2: params[:number2],
    number3: params[:number3],
    number4: params[:number4],
    number5: params[:number5],
    number6: params[:number6],
    number7: params[:number7],
    number8: params[:number8],
    number9: params[:number9])
    @numpre.save
    redirect_to("/numpre/index")
    
  end

  def new
    
  end

  def show
    @id=params[:id]
    @numpre = Numpre.find_by(id: params[:id])

  end

end