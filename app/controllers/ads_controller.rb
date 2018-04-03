class AdsController < ApplicationController
  before_action :authorize

  def index
    @ads = Ad.all
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def create
    @ad = Ad.new(ad_params)

    if @ad.save
      redirect_to @ad
    else
      render 'new'
    end
  end

  def update
    @ad = Ad.find(params[:id])
    
    if @ad.update(ad_params)
      redirect_to @ad
    else
      render 'edit'
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
   
    redirect_to ads_path
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :text)
  end
end
