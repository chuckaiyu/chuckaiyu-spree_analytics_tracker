Deface::Override.new(
  virtual_path: 'spree/checkout/_address',
  name: 'add_google_analytics_begin_checkout_to_address',
  insert_bottom: '[data-hook="checkout_address_step"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/google_analytics/begin_checkout', formats: :js %>
  HTML
)