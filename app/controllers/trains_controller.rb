class TrainsController < ApplicationController
  def index
    @trains = Train.all
  end

  def show
    @train = Train.find(params[:id])
  end

  def new
    @train = Train.new
  end

  def create
    @train = Train.new(train_params)
  
    if @train.save
      redirect_to @train
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @train = Train.find(params[:id])
  end

  def update
    @train = Train.find(params[:id])
  
    if @train.update(train_params)
      redirect_to @train
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
    @train = Train.find(params[:id])
    @train.destroy

    redirect_to trains_path, status: :see_other
  end
  
  private
    def train_params
      params.require(:train).permit(:departure, :destignation, :seats)
    end

end
