Deface::Override.new(
  virtual_path: 'spree/taxons/_header',
  name: 'add_product_list_filtered_to_taxons_show',
  insert_before: ".taxon-title",
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/product_list_filtered', formats: :js %>
  HTML
)