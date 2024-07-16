Deface::Override.new(
  virtual_path: 'spree/shared/_head',
  name: 'add_google_analytics_page_viewed_to_spree_application',
  insert_before: 'meta',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/google_analytics/page_viewed', formats: :js %>
  HTML
)