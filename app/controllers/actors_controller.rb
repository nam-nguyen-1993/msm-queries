class ActorsController < ApplicationController
  def list_actor
    render({ :template => "pages_templates/actor" })
  end

  def profile_actor
    actor_id = params.fetch("actor_id")
    record = Actor.where({ :id => actor_id })
    @the_actor = record.at(0)
    render({ :template => "pages_templates/actor_profile"})
  end
end
