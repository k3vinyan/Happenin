class HappeningsController < ApplicationController
  before_action :set_happening, except: [:index, :new, :create]

  def index
    # base_uri = 'https://happenin-club.firebaseio.com'
    # firebase = Firebase::Client.new(base_uri)
    # response = firebase.push("happenin", {business_id => params[:happening]})

  end

  def show
  end

  def new
    @happening = Happening.new
  end

  def create

    business_id = session[:id]
    # @happening = Happening.new(params)
    # @happening.save

    base_uri = 'https://happenin-club.firebaseio.com'
    firebase = Firebase::Client.new(base_uri)
    response = firebase.child("happenin").push("happenin", {business_id => params[:happening]})

  end

  def edit
  end

  def update
    if @happening.update_attributes(happening_params)
      redirect_to @happening
    else
      render :edit
    end
  end

  def destroy
    @happening.destroy

    redirect_to root_url
  end

  private
    def happening_params
      params.require(:happening).permit(:title, :description, :start_time, :end_time)
    end

    def set_customer
      @business = Happening.find(params[:id])
    end
end
