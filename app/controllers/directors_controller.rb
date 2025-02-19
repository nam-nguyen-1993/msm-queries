class DirectorsController < ApplicationController
  def list_director
    @all_directors = Director.all
    render({ :template => "pages_templates/director"})
  end

  def profile_director
    

end
