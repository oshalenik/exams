class CategoriesController < ApplicationController

def show

	@category=Category.find(params[:id])
	@products=Product.where(category_id: @category.id)
	if current_admin_user !=nil
	@orders=[]
	@products.each do |product|
		

	end

	else
	@orders=nil
	end
end

def edit
	@category=Category.find(params[:id])
end

def update
	@category=Category.find(params[:id])
    @category.update(cat_params)
end

private
def cat_params
params.require(:category).permit(:name,:description,:image)
end
end