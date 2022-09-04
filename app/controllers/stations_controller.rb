class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
    @trains = @station.trains
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
  
    if @station.save
      redirect_to @station
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @station = Station.find(params[:id])
    @trains = Train.all
  end

  def update
    @station = Station.find(params[:id])
    @trains = Train.all
  
    if @station.update(station_params)
      redirect_to @station
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def connect
    @station = Station.find(params[:station_id])
    @station.trains << Train.find(params[:train_id])

    redirect_to @station
  end

  def destroy 
    @station = Station.find(params[:id])
    @station.destroy

    redirect_to stations_path, status: :see_other
  end
  
  private
    def station_params
      params.require(:station).permit(:title, :address, :phone, :info)
    end

end
