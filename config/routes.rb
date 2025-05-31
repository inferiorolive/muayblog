Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "blog_posts#index"

  # Look up posts by ID in URL
  # as: enables us to access blog_post_path and blog_post_url
  get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  get "/jade", to: "jade#awesome"
end
