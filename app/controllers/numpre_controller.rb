class NumpreController < ApplicationController
  def index
    @numpre = Numpre.all
  end

  def about
  end


  def create
    @numpre=Numpre.create(title: params[:title])
    if @numpre.title == ""
      @numpre.title = @numpre.id 
    end
    if session[:user_id]
      @user=User.find_by(id: session[:user_id])
      @numpre.creater = @user.name
      @numpre.user_id = @user.id
    else
      @numpre.creater = "ゲストさん"
      @numpre.user_id = 1
    end

    
    @numpre.save!
    @element_a=ElementA.create(
      a_a: params[:a_a],
      a_b: params[:a_b],
      a_c: params[:a_c],
      a_d: params[:a_d],
      a_e: params[:a_e],
      a_f: params[:a_f],
      a_g: params[:a_g],
      a_h: params[:a_h],
      a_i: params[:a_i] 
    )
    @element_a.numpre_id = @numpre.id
    @element_a.save
    @element_b=ElementB.create(
      b_a: params[:b_a],
      b_b: params[:b_b],
      b_c: params[:b_c],
      b_d: params[:b_d],
      b_e: params[:b_e],
      b_f: params[:b_f],
      b_g: params[:b_g],
      b_h: params[:b_h],
      b_i: params[:b_i],
    )
    @element_b.numpre_id = @numpre.id
    @element_b.save
    @element_c=ElementC.create(
      c_a: params[:c_a],
      c_b: params[:c_b],
      c_c: params[:c_c],
      c_d: params[:c_d],
      c_e: params[:c_e],
      c_f: params[:c_f],
      c_g: params[:c_g],
      c_h: params[:c_h],
      c_i: params[:c_i],
    )
    @element_c.numpre_id = @numpre.id
    @element_c.save
    @element_d=ElementD.create(
      d_a: params[:d_a],
      d_b: params[:d_b],
      d_c: params[:d_c],
      d_d: params[:d_d],
      d_e: params[:d_e],
      d_f: params[:d_f],
      d_g: params[:d_g],
      d_h: params[:d_h],
      d_i: params[:d_i],
    )
    @element_d.numpre_id = @numpre.id
    @element_d.save
    @element_e=ElementE.create(
      e_a: params[:e_a],
      e_b: params[:e_b],
      e_c: params[:e_c],
      e_d: params[:e_d],
      e_e: params[:e_e],
      e_f: params[:e_f],
      e_g: params[:e_g],
      e_h: params[:e_h],
      e_i: params[:e_i],
    )
    @element_e.numpre_id = @numpre.id
    @element_e.save
    @element_f=ElementF.create(
      f_a: params[:f_a],
      f_b: params[:f_b],
      f_c: params[:f_c],
      f_d: params[:f_d],
      f_e: params[:f_e],
      f_f: params[:f_f],
      f_g: params[:f_g],
      f_h: params[:f_h],
      f_i: params[:f_i],
    )
    @element_f.numpre_id = @numpre.id
    @element_f.save
    @element_g=ElementG.create(
      g_a: params[:g_a],
      g_b: params[:g_b],
      g_c: params[:g_c],
      g_d: params[:g_d],
      g_e: params[:g_e],
      g_f: params[:g_f],
      g_g: params[:g_g],
      g_h: params[:g_h],
      g_i: params[:g_i],
    )
    @element_g.numpre_id = @numpre.id
    @element_g.save
    @element_h=ElementH.create(
      h_a: params[:h_a],
      h_b: params[:h_b],
      h_c: params[:h_c],
      h_d: params[:h_d],
      h_e: params[:h_e],
      h_f: params[:h_f],
      h_g: params[:h_g],
      h_h: params[:h_h],
      h_i: params[:h_i],
    )
    @element_h.numpre_id = @numpre.id
    @element_h.save
    @element_i=ElementI.create(
      i_a: params[:i_a],
      i_b: params[:i_b],
      i_c: params[:i_c],
      i_d: params[:i_d],
      i_e: params[:i_e],
      i_f: params[:i_f],
      i_g: params[:i_g],
      i_h: params[:i_h],
      i_i: params[:i_i],
    )
    @element_i.numpre_id = @numpre.id
    @element_i.save



    redirect_to("/numpre/index")
  end

  def new
    
  end

  def show
    find_numpre()
    if @numpre.nil?
      redirect_to('/numpre/index')
    end
  end

  def edit
    find_numpre()
  end

  def update
    find_numpre()
    find_elements()
    @element_a.update(
      a_a: params[:a_a],
      a_b: params[:a_b],
      a_c: params[:a_c],
      a_d: params[:a_d],
      a_e: params[:a_e],
      a_f: params[:a_f],
      a_g: params[:a_g],
      a_h: params[:a_h],
      a_i: params[:a_i])
    @element_a.save
    redirect_to('/numpre/index')
  end

  def destroy
    find_numpre()
    @numpre.destroy
    redirect_to("/numpre/index")
  end

  def like
      @user=User.find_by(id: session[:user_id])
      @like = Like.new(
        user_id: @user.id,
        numpre_id: params[:numpre_id]
      )
      @like.save
      redirect_back(fallback_location: root_path)
  end
    
  def destroy_like
    @user=User.find_by(id: session[:user_id])
    @like=Like.find_by(
      user_id: @user.id,
      numpre_id: params[:numpre_id]
    )
    @like.destroy
    redirect_back(fallback_location: root_path)
  end


  private

  def find_numpre
    @numpre = Numpre.find_by(id: params[:id])
  end

  def find_elements
    @element_a = ElementA.find_by(numpre_id: params[:id])
    @element_b = ElementB.find_by(numpre_id: params[:id])
    @element_c = ElementC.find_by(numpre_id: params[:id])
    @element_d = ElementD.find_by(numpre_id: params[:id])
    @element_e = ElementE.find_by(numpre_id: params[:id])
    @element_f = ElementF.find_by(numpre_id: params[:id])
    @element_g = ElementG.find_by(numpre_id: params[:id])
    @element_h = ElementH.find_by(numpre_id: params[:id])
    @element_i = ElementI.find_by(numpre_id: params[:id])
  end

end