Deface::Override.new(
  virtual_path: 'spree/shared/_head',
  name: 'add_segment_page_tracker_to_body',
  insert_before: 'meta',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/page_viewed', formats: :js %>
  HTML
)