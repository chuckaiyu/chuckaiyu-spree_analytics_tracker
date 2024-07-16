Deface::Override.new(
  virtual_path: 'spree/checkout/_payment',
  name: 'add_google_analytics_add_shipping_info_to_payment',
  insert_bottom: '[data-hook="checkout_payment_step"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/google_analytics/add_shipping_info', formats: :js %>
  HTML
)