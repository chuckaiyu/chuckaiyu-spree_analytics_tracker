Deface::Override.new(
  virtual_path: 'spree/shared/_products',
  name: 'add_product_list_viewed_to_products_list',
  insert_before: '[data-hook="homepage_products"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/product_list_viewed', formats: :js %>
  HTML
)