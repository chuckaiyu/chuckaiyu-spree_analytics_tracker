Deface::Override.new(
  virtual_path: 'spree/user_sessions/new',
  name: 'add_google_analytics_sign_in_to_login',
  insert_bottom: '[data-hook="login_extras"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/google_analytics/sign_in', formats: :js %>
  HTML
)