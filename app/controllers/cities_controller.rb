class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
    @regions_array = Region.all.map { |region| [region.name, region.id]}
  end

  def create
    @city = City.new(strong)
    if @city.save
      redirect_to cities_path
    else
      @regions_array = Region.all.map { |region| [region.name, region.id]}
      render 'new'
    end
  end

  def edit
    @city = City.find(params[:id])
    @regions_array = Region.all.map { |region| [region.name, region.id]}
  end

  def update
    @city = City.find(params[:id])
    if @city.update(strong)
      redirect_to city_path(@city)
    else
      render 'edit'
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to cities_path
  end

  private

  def strong
    params.require(:city).permit(:name, :region_id)
  end

end
