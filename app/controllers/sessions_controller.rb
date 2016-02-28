class SessionsController < ApplicationController
  def new
      @business = Business.new
    if request.xhr?
      # render :partial => "businesses/login", :layout => false
      render :partial => "businesses/login", locals: {business: @business}, :layout => false
    end
  end

  def create
    if params[:business][:is_business] == "true"
      @business = Business.find_by_email(params[:email])
      if @business #&& business.authenticate(params[:password])
        session[:business_id] = @business.id
        redirect_to business_url(@business), :notice => "Logged in!"
      else
          flash[:notice] = "Invalid email or password"
          redirect_to root_url
      end
    elsif params[:customer][:is_customer] == true
      customer = Customer.find(params[:id])
      if customer
        session[:customer_id] = customer.id
        redirect_to customer_path id: session[:customer_id]
      else
          flash.now.alert = "Invalid Key"
          redirect_to root_url
      end
    end
  end

  def destroy
    session[:business_id] = nil
    redirect_to '/login', :notice => "Logged out!"
  end
end
