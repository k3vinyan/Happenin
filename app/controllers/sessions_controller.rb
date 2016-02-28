class SessionsController < ApplicationController
  def new
    if request.xhr?
      render :partial => "businesses/login", :layout => false
    end
  end

  def create
    if params[:email] != nil
      business = Business.find_by_email(params[:email])
      if business && business.authenticate(params[:password])
        session[:business_id] = business.id
        redirect_to '/businesses/show', :notice => "Logged in!"
      else
          flash[:notice] = "Invalid email or password"
          redirect_to '/login'
      end
    elsif params[:key] != nil

      customer = Customer.find_by_key(params[:key])
      if customer
        session[:customer_id] = customer.id
        redirect_to customer_path id: session[:customer_id]
      else
          flash.now.alert = "Invalid Key"
          redirect_to '/'
      end
    end
  end

  def destroy
    session[:business_id] = nil
    redirect_to '/login', :notice => "Logged out!"
  end
end
