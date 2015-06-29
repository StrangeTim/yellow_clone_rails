class BusinessesController < ApplicationController

  def new
    @industry = Industry.find(params[:industry_id])
    @business = @industry.businesses.new
  end

  def create
    @industry = Industry.find(params[:industry_id])
    @business = @industry.businesses.new(business_params)
    if @business.save
      redirect_to industry_path(@business.industry)
    else
      render :new
    end
  end

  def show
    @industry = Industry.find(params[:industry_id])
    @business = Business.find(params[:id])
  end

  private
  def business_params
    params.require(:business).permit(:name, :address, :phone)
  end

end
