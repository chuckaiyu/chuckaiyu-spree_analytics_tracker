Deface::Override.new(
  virtual_path: 'spree/orders/show',
  name: 'add_order_complete_to_orders_show',
  insert_before: "#order_summary",
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/order_complete', formats: :js %>
  HTML
)