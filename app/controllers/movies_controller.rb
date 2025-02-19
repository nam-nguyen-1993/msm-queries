class MoviesController < ApplicationController
  def list_movie
    render({ :template => "pages_templates/movie" })
  end
end
