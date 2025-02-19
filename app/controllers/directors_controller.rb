class DirectorsController < ApplicationController
  def list_director
    @all_directors = Director.all
    render({ :template => "pages_templates/director"})
  end

  def profile_director
    director_id = params.fetch("director_id")
    record = Director.where({ :id => director_id })
    @the_director = record.at(0)
    render({ :template => "pages_templates/director_profile"})
  end
end
