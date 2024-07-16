Deface::Override.new(
  virtual_path: 'spree/user_registrations/new',
  name: 'add_google_analytics_sign_up_to_registration',
  insert_bottom: '[data-hook="login_extras"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/google_analytics/sign_up', formats: :js %>
  HTML
)