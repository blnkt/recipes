class RatingsController < ApplicationController
  def add_stars
    @tags = Tag.all
    @ratings = Rating.all
    @star = Rating.find(params[:rating][:id])
    @recipe = Recipe.find(params[:id])
    @recipe.ratings << @star

    render('recipes/show.html.erb')
  end
end
