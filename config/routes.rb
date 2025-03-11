Rails.application.routes.draw do
  # Resources
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"

  # Login / Logout
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  # Define the root route
  get("/", { :controller => "places", :action => "index" })
end
