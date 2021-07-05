Rails.application.routes.draw do
  # http://localhost:3000/projects
  get "/projects", to: "projects#index"
  # http://localhost:3000/projects/new
  get "/projects/new", to: "projects#new"
    # http://localhost:3000/projects/1
  get "/projects/:id", to: "projects#show", as: "project"
end
 