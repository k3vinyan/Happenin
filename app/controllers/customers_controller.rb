class CustomersController < ApplicationController
  before_action :set_customer, except: [:index, :new, :create]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @customer.update_attributes(customer_params)
      redirect_to @customer
    else
      render :edit
    end
  end

  def destroy
    @customer.destroy

    redirect_to root_url
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :phone, :email)
    end

    def set_customer
      @business = Customer.find(params[:id])
    end
end
