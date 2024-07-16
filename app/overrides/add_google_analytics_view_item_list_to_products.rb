Deface::Override.new(
  virtual_path: 'spree/shared/_products',
  name: 'add_google_analytics_view_item_list_to_products',
  insert_after: '[data-hook="homepage_products"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/google_analytics/product_list_viewed', formats: :js %>
  HTML
)