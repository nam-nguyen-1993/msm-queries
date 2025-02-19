class ActorsController < ApplicationController
  def list_actor
    render({ :template => "pages_templates/actor" })
  end
end
