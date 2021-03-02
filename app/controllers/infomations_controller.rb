class InfomationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :edit]
  before_action :info_find, only: [:show, :destroy, :edit, :update]
  before_action :move_to, only: [:edit, :update, :destroy]

  def index
    @infomations = Infomation.all
  end

  def new
    @infomation =Infomation.new
  end

  def create
    
    @infomation = Infomation.new(infomation_params)
    if @infomation.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def update
    if @infomation.update(infomation_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @infomation.destroy
      redirect_to root_path
    else
      render :show
    end
  end


  private

  def infomation_params
    params.require(:infomation).permit( :image,:title,:category_id,:main,:url).merge(user_id: current_user.id)
  end

  def info_find
    @infomation = Infomation.find(params[:id])
  end

  def move_to
    redirect_to root_path unless current_user == @infomation.user
  end

end
