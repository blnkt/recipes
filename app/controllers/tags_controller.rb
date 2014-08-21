class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end

  def new
    @tag = Tag.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = "You're such a dish!"
      redirect_to ('/tags/')
    else
      render('tags/new.html.erb')
    end
  end

  def add_tag
    @tags = Tag.all
    @tag = Tag.find(params[:tag][:id])
    @recipe = Recipe.find(params[:id])
    if @recipe.tags.include?(@tag)
      flash[:alert] = "This recipe already has this tag."
    else
      @recipe.tags << @tag
      flash[:notice] = "You're such a dish!"
    end
    render('recipes/show.html.erb')
  end

  def show
    @tag = Tag.find(params[:id])
    @recipes = @tag.recipes
    render('tags/show.html.erb')
  end


  def destroy
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    @tag.destroy
    render('tags/index.html.erb')
  end
end
