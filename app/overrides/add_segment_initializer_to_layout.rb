Deface::Override.new(
  virtual_path: 'spree/shared/_head',
  name: 'add_segment_initializer_to_layout',
  insert_after: 'title',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/initializer', formats: :js %>
  HTML
)