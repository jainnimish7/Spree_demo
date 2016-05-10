Deface::Override.new(:virtual_path => "spree/admin/products/index",
  :name => "slug_product_heading_bar",
  :insert_before => "th.text-center",
  :text => "<th><%= Spree.t(:slug) %></th>",
  :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/products/index",
  :name => "slug_products_field_bar",
  :insert_before => "td.text-center",
  :text => "<td><%= link_to product.try(:slug), edit_admin_product_path(product) %></td>",
  :disabled => false)
