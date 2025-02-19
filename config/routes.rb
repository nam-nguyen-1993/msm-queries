Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "list_director" })
  get("/directors/:director_id", { :controller => "directors", :action => "profile_director" })

  get("/movies", {:controller => "movies", :action => "list_movie"})
  get("/movies/:movie_id", { :controller => "movies", :action => "profile_movie" })

  get("/actors", { :controller => "actors", :action => "list_actor" })
end
