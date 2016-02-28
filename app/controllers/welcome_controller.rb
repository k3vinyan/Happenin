class WelcomeController < ApplicationController
  def index
  end

  def login

    if request.xhr?
     render :partial => "login", :layout => false
    end
  end
end
