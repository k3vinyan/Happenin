class BusinessesController < ApplicationController
  before_action :set_business, except: [:index, :new, :create]

  def index
    @businesses = Business.all
  end

  def show
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @business.update_attributes(business_params)
      redirect_to @business
    else
      render :edit
    end
  end

  def destroy
    @business.destroy

    redirect_to root_url
  end

  private
    def business_params
      params.require(:business).permit(:name, :address, :city, :state, :zip, :password)
    end

    def set_business
      @business = Business.find(params[:id])
    end
end
