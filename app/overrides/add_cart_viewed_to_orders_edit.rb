Deface::Override.new(
  virtual_path: 'spree/orders/edit',
  name: 'add_cart_viewed_to_orders_edit',
  insert_top: '[data-hook="cart_container"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/cart_viewed', formats: :js %>
  HTML
)