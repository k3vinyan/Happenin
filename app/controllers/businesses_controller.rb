class BusinessesController < ApplicationController
  before_action :set_business, except: [:index, :new, :create]

  def index
    @businesses = Business.all

    if request.xhr?
     render :partial => "login", :layout => false
    end
  end

  def show
    # @user = Business.find_by(customer_params)

    if request.xhr?
     puts "no"
     render :partial => "test", :layout => false
    else
      puts "no"
    end
  end

  def partial

    if request.xhr?
      if request[:partion => 'create']
        render :partial => "partials/createDealsForm", :layout => false
      elsif request[:partion => 'ongoing']
        render :partial => "partials/ongoingDeals", :layout => false
      elsif request[:partion => 'save']
        rener :partial => "partials/reuseableDeals", :layout=> false
      end
    end
  end

  def new
    @business = Business.new

    if request.xhr?
     render :partial => "form", :layout => false
    end
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      redirect_to @business
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

    # def set_business
    #   @business = Business.find(params[:id])
    # end

    # def customer_params
    #   params.require(:customer).permit(:email, :password)
    # end
end
