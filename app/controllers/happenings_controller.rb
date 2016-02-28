class HappeningsController < ApplicationController
  before_action :set_happening, except: [:index, :new, :create]

  def index
    @happenings = Happening.all
  end

  def show
  end

  def new
    @happening = Happening.new
  end

  def create
    @happening = Happening.new(happening_params)

    if @happening.save
      p @happening
      redirect_to happenings_url
    else
      render :new
    end
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
