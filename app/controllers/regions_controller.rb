class RegionsController < ApplicationController

  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
  end

  def new
    @region = Region.new
    @countries_array = Country.all.map { |country| [country.name, country.id]}
  end

  def create
    @region = Region.new(strong)
    if @region.save
      redirect_to regions_path
    else
      @countries_array = Country.all.map { |country| [country.name, country.id]}
      render 'new'
    end
  end

  def edit
    @region = Region.find(params[:id])
    @countries_array = Country.all.map { |country| [country.name, country.id]}

  end

  def update
    @region = Region.find(params[:id])
    if @region.update(strong)
      redirect_to region_path(@region)
    else
      render 'edit'
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to regions_path
  end

  private

  def strong
    params.require(:region).permit(:name, :country_id)
  end

end
