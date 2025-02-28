Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "list_director" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:director_id", { :controller => "directors", :action => "profile_director" })

  get("/movies", {:controller => "movies", :action => "list_movie"})
  get("/movies/:movie_id", { :controller => "movies", :action => "profile_movie" })

  get("/actors", { :controller => "actors", :action => "list_actor" })
  get("/actors/:actor_id", { :controller => "actors", :action => "profile_actor" })
end
