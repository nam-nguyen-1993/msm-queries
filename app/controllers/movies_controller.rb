class MoviesController < ApplicationController
  def list_movie
    render({ :template => "pages_templates/movie" })
  end

  def profile_movie
    movie_id = params.fetch("movie_id")
    record = Movie.where({ :id => movie_id })
    @the_movie = record.at(0)
    render({ :template => "pages_templates/movie_profile"})
  end
end
