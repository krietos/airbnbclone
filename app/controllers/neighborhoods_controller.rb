class NeighborhoodsController < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  def new
    @neighborhood = Neighborhood.new
    @cities_array = City.all.map { |city| [city.name, city.id]}

  end

  def create
    @neighborhood = Neighborhood.new(strong)
    if @neighborhood.save
      redirect_to neighborhoods_path
    else
      @cities_array = City.all.map { |city| [city.name, city.id]}
      render 'new'
    end
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])
    @cities_array = City.all.map { |city| [city.name, city.id]}

  end

  def update
    @neighborhood = Neighborhood.find(params[:id])
    if @neighborhood.update(strong)
      redirect_to neighborhood_path(@neighborhood)
    else
      render 'edit'
    end
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end

  private

  def strong
    params.require(:neighborhood).permit(:name, :city_id)
  end

end
