Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: 'add_product_viewed_to_products_show',
  insert_bottom: '[data-hook="product_show"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/product_viewed', formats: :js %>
  HTML
)

Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: 'add_product_viewed_to_products_show',
  insert_bottom: '[data-hook="product_show"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/google_analytics/product_viewed', formats: :js %>
  HTML
)