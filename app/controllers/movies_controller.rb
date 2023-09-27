class MoviesController < ApplicationController

  def index
    render({ :template => "movie_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")

    @the_movie = Movie.where({ :id => the_id }).first
    render({ :template => "movie_templates/details"})
  end
end
