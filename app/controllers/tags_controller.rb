class TagsController < ApplicationController
  def index
    @tags = Tags.all
    render('tags/index.html.erb')
  end
end
