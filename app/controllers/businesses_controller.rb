class BusinessesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :set_business, except: [:index, :new, :create]

  def index

  end

  def show
    # @business = Business.find_by(id: session[:business_id])
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
      session[:business_id] = @business.id
      redirect_to business_url(@business), :notice => "Signed up!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    p params
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
      params.permit(:name, :address, :city, :state, :zip, :password, :twitterDisplayName, :twitterUid, :twitterProfile_image_url, :twitterUsername)
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

    def set_business
      @business = Business.find(params[:id])
    end

    # def customer_params
    #   params.require(:customer).permit(:email, :password)
    # end
end
