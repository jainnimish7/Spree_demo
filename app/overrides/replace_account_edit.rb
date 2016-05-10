Deface::Override.new(:virtual_path => "spree/users/show",
  :name => "replace_head_bar",
  :replace => 'dl#user-info',
  :text => "<dl id='user-info'>
            <dt><%= Spree.t(:name) %></dt>
            <dd><%= @user.name %> (<%= link_to Spree.t(:edit), spree.edit_account_path %>)</dd>
          </dl>",
  :disabled => false,
)