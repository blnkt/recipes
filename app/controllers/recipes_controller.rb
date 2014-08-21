class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recent = Recipe.recent
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      flash[:notice] = "You're such a dish!"
      redirect_to ('/')
    else
      render('recipes/new.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    @id = @recipe.id
    @recipe.update(params[:recipe])
    redirect_to('/recipes')
  end

  def destroy
    @recent = Recipe.recent
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render('recipes/index.html.erb')
  end
end