class PropertiesController < ApplicationController
  def new
  end
  
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def create

	@property = Property.new(property_params)

	@property.save
	redirect_to @property
  end

  private
  	def property_params
    	params.require(:property).permit(:title, :text, :price)
  	end
end
