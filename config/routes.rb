Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin, path: Spree.admin_path do
    resources :analytics_trackers
  end
end
