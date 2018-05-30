class StaticPagesController < ApplicationController

  def home
  end

  def shop
    @categories=Category.all
  end

  def contact
  end

  def about
  end

  def add_car
  end

  def profile_info
  end
  	
end
