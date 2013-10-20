class CategoriesController < ApplicationController

	before_action :get_params, only:[:update,:edit,:destroy]
  def index
  	@category = Category.all
  end

  def edit
  end

  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)

  	if @category.save
  		redirect_to categories_path
  	else

  		render 'new'
  	end

  	
  end
  def destroy
  	@category.destroy
  	  redirect_to categories_path
 
  	
  end

private

    def get_params

    	@category = Category.find(params[:id])
    	end

    def category_params
      params.require(:category).permit(:name)
    end


end
