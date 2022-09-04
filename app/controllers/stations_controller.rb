class StationsController < ApplicationController
  def index
  end

  def show
    @station = Station.find(params[:id])
    @trains = @station.trains
  end
end
